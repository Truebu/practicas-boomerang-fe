import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/shared/shared.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: GeometricalBackground(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height, // 80 los dos sizebox y 100 el ícono
                  width: size.width - 80,
                  decoration: BoxDecoration(
                    color: scaffoldBackgroundColor,
                  ),
                  child: const _LoginForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 80),
          Text("Boomerang", style: textStyles.titleLarge),
          const SizedBox(height: 100),
          Text('Iniciar sesion', style: textStyles.titleLarge),
          const SizedBox(height: 90),
          const CustomTextFormField(
            label: 'Correo electronico',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 30),
          const CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: CustomFilledButton(
              text: 'Ingresar',
              buttonColor: colors.primary,
              onPressed: () => context.push('/home'),
            ),
          ),
          const Spacer(flex: 2),
          TextButton(
            onPressed: () => context.push('/recovery'),
            child: const Text('Olvidaste tú contraseña?'),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
