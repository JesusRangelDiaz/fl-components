import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue=50;
  bool _sliderEnable=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            activeColor: AppTheme.primary,
            max:400,
            value:_sliderValue,
            onChanged: _sliderEnable ? (value){ _sliderValue=value;setState(() {});} :null ,
            ),
            Checkbox(
              value: _sliderEnable, 
              onChanged: (value){
                _sliderEnable =value ?? true;
                setState(() {});
              }
            ),
            CheckboxListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value:_sliderEnable,
              onChanged:(value) => {setState(() {
                _sliderEnable=value ?? true; })
              }
            ),
            Switch(
              value: _sliderEnable,
              onChanged:(value) => {setState(() {
                _sliderEnable=value; })
              }
            ),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged:(value) => {setState(() {
                _sliderEnable=value; })
              }
            ),
            const AboutListTile(

            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(image: const NetworkImage('https://qph.cf2.quoracdn.net/main-qimg-0832324ff998e763b424bdfd7040860b-pjlq'),
                fit: BoxFit.fill,
                width: _sliderValue,),
              ),
            ),
      ],
      ),
    );
  }
}