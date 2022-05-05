import 'package:flutter/material.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/urona_rolera.jpg',
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        _blackGradient(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _topNav(),
            Column(
              children: [
                _interactiveButtons(),
                _postData(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _blackGradient() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black87,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black54,
            Colors.black87,
          ],
        ),
      ),
    );
  }

  Widget _topNav() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Siguiendo",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              SizedBox(height: 8.0),
              Container(
                color: Colors.white,
                height: 2.0,
                width: 40.0,
              ),
            ],
          ),
          SizedBox(width: 30),
          Column(
            children: [
              Text(
                "Para ti",
                style: TextStyle(fontSize: 16.0, color: Colors.white54),
              ),
              SizedBox(height: 8.0),
              Container(
                color: Colors.white54,
                height: 2.0,
                width: 40.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _interactiveButtons() {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white)),
            child: ClipOval(
              child: Image.asset(
                'assets/images/urona_rolera.jpg',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 25),
          Image.asset("assets/icons/corazon.png"),
          SizedBox(height: 5),
          Text(
            "169.2k",
            style: TextStyle(fontSize: 10.0, color: Colors.white),
          ),
          SizedBox(height: 20),
          Image.asset("assets/icons/comentarios.png"),
          SizedBox(height: 5),
          Text(
            "5109",
            style: TextStyle(fontSize: 10.0, color: Colors.white),
          ),
          SizedBox(height: 20),
          Image.asset("assets/icons/compartir.png"),
          SizedBox(height: 5),
          Text(
            "119",
            style: TextStyle(fontSize: 10.0, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _postData() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: "@huronalorera",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: '\t 03-05',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      "MENCIONADME AUDIOS QUE QUERED QUE HAGA!!",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset('assets/icons/musica.png', width: 20),
                        SizedBox(width: 10),
                        Text(
                          'Rolera - Dana',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'sonido original',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white24,
                      width: 10.0,
                    )),
                child: ClipOval(
                  child: Image.asset(
                    'assets/icons/musica.png',
                    // 'asstes/i/mages/urona_rolera.jpg',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
