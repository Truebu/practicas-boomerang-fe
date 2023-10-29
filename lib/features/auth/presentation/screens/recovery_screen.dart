import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/shared/shared.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

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
                  child: const _RecoveryForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RecoveryForm extends StatelessWidget {
  const _RecoveryForm();

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  if (!context.canPop()) return;
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back_rounded,
                    size: 40, color: Colors.black),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('RECUPERACIÓN', style: textStyles.displaySmall),
                  Text('DE CUENTA', style: textStyles.displaySmall),
                ],
              ),
              const Spacer(flex: 2),
            ],
          ),
          const SizedBox(height: 80),
          Text('Ingrese el correo electronico', style: textStyles.titleSmall),
          Text('con el cual se registro', style: textStyles.titleSmall),
          const SizedBox(height: 80),
          const CustomTextFormField(
            label: 'Correo electronico',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 80),
          Text('Enviaremos un correo electronico a la',
              style: textStyles.bodyMedium),
          Text('cuenta indicada para recuperar la',
              style: textStyles.bodyMedium),
          Text('contraseña.', style: textStyles.bodyMedium),
          const SizedBox(height: 80),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: CustomFilledButton(
              text: 'Enviar',
              buttonColor: const Color(0xFFFBBA37),
              onPressed: () {},
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
