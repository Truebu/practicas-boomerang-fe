import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _HomeView(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste),
            label: 'REVISORES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.personal_injury),
            label: 'CONDUCTORES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'VEHICULOS',
          ),
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        iconSize: 50,
        onTap: (index) {
          if (index == 1) {}
        },
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              Text('Empresa XYZ', style: textStyles.titleLarge),
              const Spacer(flex: 1),
              IconButton(
                onPressed: () {
                  if (!context.canPop()) return;
                  context.pop();
                },
                icon: const Icon(Icons.logout, size: 40, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text('Resumen:', style: textStyles.titleMedium),
          const SizedBox(height: 20),
          Container(
            height: 150, // 80 los dos sizebox y 100 el ícono
            width: size.width - 40,
            decoration: BoxDecoration(
              //color: colors.primary,
              border: Border.all(width: 4, color: colors.primary),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text('Total Revisores: 3', style: textStyles.titleMedium),
                Text('Total Conductores: 12', style: textStyles.titleMedium),
                Text('Total Vehiculos: 12', style: textStyles.titleMedium),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text('Vehiculos con observaciones', style: textStyles.titleMedium),
          const SizedBox(height: 20),
          ListView(
            padding: const EdgeInsets.all(8),
            children: [
              // Container(
              //   height: 250, // 80 los dos sizebox y 100 el ícono
              //   width: size.width - 40,
              //   padding: const EdgeInsets.only(left: 10),
              //   decoration: BoxDecoration(
              //     //color: colors.primary,
              //     border: Border.all(width: 4, color: colors.primary),
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Row(
              //     children: [
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         children: [
              //           Text('ABC-123', style: textStyles.titleMedium),
              //           Text('Marca: ABC', style: textStyles.titleSmall),
              //           Text('Serie: ABC', style: textStyles.titleSmall),
              //           Text('Modelo: 2012', style: textStyles.titleSmall),
              //           Text('Kilometraje: 123.456 Km',
              //               style: textStyles.titleSmall),
              //         ],
              //       ),
              //       const Icon(Icons.image, size: 200)
              //     ],
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
