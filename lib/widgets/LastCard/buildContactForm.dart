import 'package:demo/Services/ContactForm.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  bool agreed = false;
  bool isLoading = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (!agreed) {
      _showMessageDialog("⚠️ You must agree to continue");
      return;
    }

    setState(() => isLoading = true);

    try {
      final service = ContactService();
      await service.sendContactForm(
        name: nameController.text,
        email: emailController.text,
        message: messageController.text,
      );

      if (mounted) {
        _showSuccessOverlay();

        // مسح الفورم
        nameController.clear();
        emailController.clear();
        messageController.clear();
        setState(() => agreed = false);
      }
    } on Exception catch (e) {
      if (mounted) {
        setState(() => isLoading = false); // توقف الـ loading
        String errorMessage = e.toString().replaceAll('Exception: ', '');
        _showMessageDialog(errorMessage);
      }
      return;
    } finally {
      if (mounted) setState(() => isLoading = false); // تأكيد إنه توقف
    }
  }

  void _showMessageDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  void _showSuccessOverlay() {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Material(
        color: Color(0xff08010f),
        child: Center(
          child: SizedBox.expand(
            child: Image.asset(
              "assets/SuccessMessage.webp",
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    const double fontSize = 16;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextField('NAME', 'Your name', fontSize, nameController),
        const SizedBox(height: 20),
        _buildTextField('EMAIL', 'Enter your email', fontSize, emailController),
        const SizedBox(height: 20),
        _buildTextField(
          'MESSAGE',
          'Enter your message',
          fontSize,
          messageController,
          maxLines: 4,
        ),
        const SizedBox(height: 20),
        _buildTermsCheckbox(fontSize),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: isLoading ? null : _submitForm,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Color.fromARGB(255, 255, 255, 255),
                  )
                : const Text(
                    'Send Your Request',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(
    String label,
    String hint,
    double fontSize,
    TextEditingController controller, {
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.grey[400], fontSize: 12)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey[600]),
            filled: true,
            fillColor: const Color(0xFF2B2B38),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey[700]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTermsCheckbox(double fontSize) {
    return Row(
      children: [
        Checkbox(
          value: agreed,
          onChanged: (bool? value) {
            setState(() {
              agreed = value ?? false;
            });
          },
          checkColor: Colors.black,
          activeColor: Colors.white,
          side: BorderSide(color: Colors.grey[600]!),
        ),
        Text(
          'I agree with Terms and Conditions',
          style: TextStyle(color: Colors.grey[400], fontSize: fontSize),
        ),
      ],
    );
  }
}
