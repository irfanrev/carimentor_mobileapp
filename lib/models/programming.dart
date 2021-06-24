import 'package:flutter/material.dart';

class Programming {
  String name;
  String kategori;
  String bio;
  String skill;
  String wa;
  String email;
  String linkedIn;
  String imageAssets;

  Programming(
      {this.name,
      this.kategori,
      this.bio,
      this.skill,
      this.wa,
      this.email,
      this.linkedIn,
      this.imageAssets});
}

var programminList = [
  Programming(
      name: 'Erik',
      kategori: 'Programming',
      bio:
          'Saya Erik, saya merupakan seorang Software Developer di salah satu perusahaan ternama di Indonesia',
      skill: 'Java\nC++\nKotlin\nSwift',
      wa: '08545335666',
      email: 'erikk@gmail.com',
      linkedIn: 'erikkk',
      imageAssets: 'assets/desain1.jpeg'),
  Programming(
      name: 'Dika',
      kategori: 'Programming',
      bio:
          'Saya Dika, saya merupakan seorang Web Developer di salah satu perusahaan ternama di Indonesia',
      skill: 'Java Script\nPython\nReactJS\nMongoDB',
      wa: '088445622',
      email: 'dika123@gmail.com',
      linkedIn: 'dika123',
      imageAssets: 'assets/desain2.jpeg'),
  Programming(
      name: 'Eko',
      kategori: 'Programming',
      bio:
          'Saya Eko, saya merupakan seorang Android Developer di salah satu perusahaan ternama di Indonesia',
      skill: 'Kotlin\nFlutter\nReact Native',
      wa: '088445622',
      email: 'eko@gmail.com',
      linkedIn: 'eko123',
      imageAssets: 'assets/desain3.jpg'),
  Programming(
      name: 'Rizky',
      kategori: 'Programming',
      bio:
          'Saya Rizky, saya merupakan seorang Software Developer di salah satu perusahaan ternama di Indonesia',
      skill: 'Python\njava\nC#\nMongoDB',
      wa: '08557744433',
      email: 'rizky443@gmail.com',
      linkedIn: 'rizky_',
      imageAssets: 'assets/desain4.jpeg'),
  Programming(
      name: 'Anwar',
      kategori: 'Programming',
      bio:
          'Saya Anwar, saya merupakan seorang Front-end Developer di salah satu perusahaan ternama di Indonesia',
      skill: 'ReactJS\nFlutter\nVueJS',
      wa: '088445622',
      email: 'anwar123@gmail.com',
      linkedIn: 'anwar_',
      imageAssets: 'assets/desain5.jpeg'),
  Programming(
      name: 'Ivan',
      kategori: 'Programming',
      bio:
          'Saya Ivan, saya merupakan seorang Mobile Developer di salah satu perusahaan ternama di Indonesia',
      skill: 'Flutter\nReactNative\nKotlin',
      wa: '088346698',
      email: 'ivan80@gmail.com',
      linkedIn: 'ivan8080',
      imageAssets: 'assets/desain6.jpeg'),
];
