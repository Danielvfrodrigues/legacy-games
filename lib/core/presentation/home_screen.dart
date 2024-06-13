import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff0C1B3A),
        body: _buildBody(context),
      ),
    );
  }

  _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [

              // LOGO
              Image.asset("assets/images/d-pad.png"),

              // BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // DASHBOARD BUTTON
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/dashboard'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: const Size(0, 100),
                      ),
                      child: const Text("DASHBOARD"),
                    ),
                  ),

                  const SizedBox(width: 16),

                  // + PLAYER BUTTON
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/spinwheel'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: const Size(0, 100),
                      ),
                      child: const Text("+ PLAYER"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // START BUTTON
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/points'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 60),
                        backgroundColor: Colors.amberAccent,
                      ),
                      child: const Text("INICIAR JOGOS"),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // GAME PAD
          Row(
            children: [
              Expanded(child: Image.asset("assets/images/d-pad.png")),
              const SizedBox(width: 32,),
              Expanded(child: Image.asset("assets/images/game-buttons.png"))
            ],
          ),
        ],
      ),
    );
  }
}
