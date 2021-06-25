import 'package:flutter/material.dart';

class TopMentor {
  String name;
  String kategori;
  String bio;
  String skill;
  String wa;
  String email;
  String linkedIn;
  String imageAssets;

  TopMentor(
      {this.name,
      this.kategori,
      this.bio,
      this.skill,
      this.wa,
      this.email,
      this.linkedIn,
      this.imageAssets});
}

var mentorList = [
  TopMentor(
      name: 'Fadilah',
      kategori: 'Desain Grafis',
      bio:
          'Saya Fadilah, saya merupakan seorang Desain Grafis di salah satu perusahaan ternama di Indonesia',
      skill: 'Corel Draw\nPhotoshop\nAdobe Ilustrator\nFigma',
      wa: '083344562223',
      email: 'fadil123@gmail.com',
      linkedIn: 'fadil123',
      imageAssets: 'assets/desain1.jpeg'),
  TopMentor(
      name: 'Eko',
      kategori: 'Programming',
      bio:
          'Saya Eko, saya merupakan seorang Android Developer di salah satu perusahaan ternama di Indonesia',
      skill: 'Kotlin\nFlutter\nReact Native',
      wa: '088445622',
      email: 'eko@gmail.com',
      linkedIn: 'eko123',
      imageAssets: 'assets/desain3.jpg'),
  TopMentor(
      name: 'Karin',
      kategori: 'Marketing',
      bio:
          'Saya Karin, saya merupakan seorang Digital Marketing di salah satu perusahaan ternama di Indonesia',
      skill: 'Public Speaking\nMarketPlace\nOnline Shop',
      wa: '083344562223',
      email: 'karin.rin@gmail.com',
      linkedIn: 'karin_',
      imageAssets: 'assets/01.jpeg'),
  TopMentor(
      name: 'Chandra',
      kategori: 'Video Editor',
      bio:
          'Saya Chandra, saya merupakan seorang Video Editor di salah satu perusahaan ternama di Indonesia',
      skill: 'Adobe Premiere Pro\nBlender\nAdobe After Efect',
      wa: '085573242775',
      email: 'chandra123@gmail.com',
      linkedIn: 'chandraa',
      imageAssets: 'assets/06.jpeg')
];
