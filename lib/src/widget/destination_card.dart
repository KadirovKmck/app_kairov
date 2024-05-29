import 'package:flutter/material.dart';

class DestinationTile extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final Function()? onTap;

  const DestinationTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  _DestinationTileState createState() => _DestinationTileState();
}

class _DestinationTileState extends State<DestinationTile> {
  bool _isTapped = false;

  void _handleTap() {
    setState(() {
      _isTapped = true;
    });

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _isTapped = false;
      });
    });

    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: _isTapped ? Colors.grey[800] : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                SizedBox(
                  child: Image.asset(
                    widget.imagePath,
                    width: 53,
                    height: 53,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.subtitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 116, 113, 113),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 400,
            color: const Color.fromARGB(255, 82, 81, 81),
          ),
        ],
      ),
    );
  }
}
