import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/Model/contact_us_model.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/Model/education_model.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Portfolio/Model/portfolio_model.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Skills/Model/skill_model.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/Model/video_model.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/WorkArea/Model/work_area_model.dart';
import 'package:ravilakhtariya/Themes/app_image.dart';

class Constants {
  Constants._();

  static const workAreaList = [
    WorkAreaModel(
      title: 'DESIGN',
      image: AppImage.design,
      subtitle:
      'A full stack all-round designer they may or may not include a guide for specific creative',
    ),
    WorkAreaModel(
      title: 'DEVELOP',
      image: AppImage.develop,
      subtitle:
      'A full stack all-round developer they may or may not include a guide for specific creative',
    ),
    WorkAreaModel(
      title: 'WRITE',
      image: AppImage.write,
      subtitle:
      'A full stack all-round writer they may or may not include a guide for specific creative',
    ),
    WorkAreaModel(
      title: 'Photography',
      image: AppImage.promote,
      subtitle:
      'A full stack all-round promoter they may or may not include a guide for specific creative',
    ),
  ];

  static const educationList = [
    EducationModel(
      description: 'B.E. Computer Engineering',
      link: 'Government Engineering College - Rajkot',
      period: '2014 - 2018',
    ),
    EducationModel(
      description: 'H.S.C',
      link: 'The School Of Science - Rajkot',
      period: '2012 - 2014',
    ),
    EducationModel(
      description: 'S.S.C',
      link: 'Shree Bahuchar Vidhayalaya',
      period: '2013 - 2014',
    ),
  ];

  static const skillsList = [
    SkillModel(
      skill: 'Dart',
      percentage: 72,
    ),
    SkillModel(
      skill: 'Swift',
      percentage: 75,
    ),
    SkillModel(
      skill: 'Photoshop',
      percentage: 70,
    ),
    SkillModel(
      skill: 'Illustrator',
      percentage: 60,
    ),
    SkillModel(
      skill: 'Lightroom',
      percentage: 75,
    ),
  ];

  static const List<PortfoliosModel> portfolios = [
    PortfoliosModel(
      projectType: 'IOS',
      portfolioList: [
        PortfolioModel(
          title: 'Fuelo',
          description:
              'Fuelo is an vehicle tracking app, which helping to track your vehicle data, how many kilometers run, how many time services done, what is current average, how many money spent on vehicle etc. The image poster designed by me. Currently app is not available in appstore.',
          image: AppImage.fueloIOS,
          link: 'https://www.instagram.com/p/B5PcCkJAp-C/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==',
        ),
        PortfolioModel(
          title: 'Finance Calculator',
          description:
          'Finance calculator is calculating a finance app Finance calculator is calculating a finance app Finance calculator is calculating a finance app Finance calculator is calculating a finance app Finance calculator is calculating a finance app Finance calculator is calculating a finance app',
          image: '',
          link: '',
        ),
      ],
    ),
    PortfoliosModel(
      projectType: 'FLUTTER',
      portfolioList: [
        PortfolioModel(
          title: 'Finance Calculator',
          description: '''A Financial Calculator exclusively for Indians with the schemes available in Indian Banks, Post Office, Mutual Funds, Retirement, Income Tax and much more.This App provides the following calculators for both Mobile Phones and Tablets.\nBANK CALCULATORS:\n- Equated Monthly Instalment - EMI Calculator (Loan Calculator / Mortgage Calculator)
            - Compare Two EMI
            - Fixed Deposit Calculator (FD)
            - Recurring Deposit Calculator (RD)
        Post Office:
        - Public Provident Fund (PPF) calculator
            - Sukanya Samriddhi Yojana (SSY) calculator
            - National Pension System (NPS) Calculator
            - National Savings Certificate (NSC) Calculator
        SHARE MARKET CALCULATORS:
        - Systematic Investment Plan (SIP) Calculator
            - Systematic Withdrawal Plan (SWP) Calculator
            - Systematic Investment Planner
            - SIP Delay Calculator
            - Lumpsum Calculator
            - Return Of Investment (ROI) Calculator
        Shopping & Tax Calculators:
        - Goods and Services Tax (GST) Calculator
            - Discount Calculators
        Income Tax Calculators:
        - Income Tax Calculator
            - HRA Calculator
        GENERAL-PURPOSE CALCULATORS:
        - Compound Interest Calculator (Future Value Calculator)
        FEATURES:
        - FREE
            - Exclusively for Indians with Indian finance schemes
            - Helps you take informed decisions about your finance
            - Indian number format
            - Displays the Maturity amount
            - Displays "Total Amount Deposited" and "Total Interest Earned"
            - Displays Yearly and Monthly growth reports
            - Displays visually intuitive graphs
            - Info section for all calculators.
        PDF Features:
        - you can save your calculations in PDF
        - share PDF to others
        Multiple Language Support Features:
        - Indian Multiple language supports English, Hindi, Gujrati, Tamil and Marathi.
        Other Features:
        Now contact our agents Insurance, mutual fund helps by Whatsapp.''',
          image: AppImage.financeCalculator,
          link:
              'https://play.google.com/store/apps/details?id=com.gunatitsolutions.financecalculator&hl=en-IN',
        ),
        PortfolioModel(
          title: 'WeQTWriter',
          description:'''weQTwriter is one of the fastest-growing quote writing applications in India. Our goal is to uplift writers' skills and encourage them through a great platform. weQTwriter is an application designed to make you fall in love with writing all over again. If you are a writer, weQTwriter will help you find the writer within you. We also unlock all the secrets of writing and make your practice daily.
In this application, you need to first log in or create your account if not registered. Once you are login you will get an interface where you can write your beautiful quotes. weQTwriter has a feature where you can upload your photo and can write your name below your quote. This is how you can share your quote to ant social media like WhatsApp, Facebook, Instagram, Linkedin, etc.
So, what are you waiting for, download the app and share your quote with the world.''',
          image: '',
          link: 'https://play.google.com/store/apps/details?id=com.gunatitsolutions.weqtwriter&hl=en-IN',
        ),
        PortfolioModel(
          title: 'Image To Pdf Maker',
          description:
              'Fuelo is an vehichel tracking app,Fuelo is an vehichel tracking app,Fuelo is an vehichel tracking app,Fuelo is an vehichel tracking app,Fuelo is an vehichel tracking app,',
          image: 'assets/images/imagetopdfmaker.jpeg',
          link: 'www.linkedin.com',
        ),
      ],
    ),
    PortfoliosModel(
      projectType: 'Graphic Design',
      portfolioList: [
        PortfolioModel(
          title: 'Darshan Gems',
          description:
              'Its client logo designed as client requirement. The logo is describe gems business in black background with golden color.',
          image: AppImage.logoDesign,
          link: '',
        ),
      ],
    ),
    PortfoliosModel(
      projectType: 'UI Design',
      portfolioList: [
        PortfolioModel(
          title: 'Metro App',
          description:
              'Its offline metro app design for ios and flutter both platform. Currently app is not available in app store',
          image: AppImage.metroUI,
          link: 'https://www.instagram.com/p/CBu1aEYAtiD/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==',
        ),
      ],
    ),
    PortfoliosModel(
      projectType: 'Photography',
      portfolioList: [
        PortfolioModel(
          title: 'White Penicals',
          description:
              'The image is of a group of pelican birds perched on a log. The birds are predominantly white and brown in color, and the photo was captured using a Canon 200D Mark2 camera.',
          image: AppImage.penicals,
          link: 'https://www.instagram.com/p/C11MkokIXrd/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==',
        ),
      ],
    ),
    PortfoliosModel(
      projectType: 'Writer',
      portfolioList: [
        PortfolioModel(
          title: 'શું આ છે પ્રેમ?',
          description:
              'શું આ છે પ્રેમ? - ભાગ ૧ આ એક નાટક છે જે ભવિષ્યમાં રંગમંચ પર પ્રકાશિત થવાનું છે ...પણ આ નાટક એક સત્ય જીવન પર આધારિત છે પણ કોઈ એક ના જીવન પર આધારિત નથી.',
          image: AppImage.writer,
          link: 'https://gujarati.pratilipi.com/series/is-this-love-by-ravi-lakhtariya-6rvilbwcfogm',
        ),
      ],
    ),
  ];

  static const portfolioType = [
    'IOS',
    'FLUTTER',
    'UI DESIGN',
    'GRAPHIC DESIGN',
    'PHOTOGRAPHER',
    'YOUTUBE'
  ];

  static const videoList = [
    VideoModel(
        title: 'Connectivity module not found - iOS Flutter',
        shortDescription: 'In iOS if connectivity module not found, solved the issue.',
        videoLink: 'https://youtu.be/KJevu9r1tn8',
        videoImageUrl: AppImage.connectivityFrameworkNotFound),
    VideoModel(
        title: 'Fix framework Not Found Flutter',
        shortDescription: 'If not framework found then which steps need to apply check that issue',
        videoLink: 'https://youtu.be/53clVt91ynk',
        videoImageUrl: AppImage.frameworkNotFound),
  ];

  static var contactsList = [
    ContactUsModel(iconData: Icons.house_outlined, contactDetail: 'Umiya chowk, 150 feet ring road,\nRajkot - 360004'),
    ContactUsModel(iconData: Icons.email, contactDetail: 'ravilakhtariya07@gmail.com'),
    ContactUsModel(iconData: FontAwesomeIcons.whatsapp, contactDetail: '+91 99047 95771'),
    ContactUsModel(iconData: Icons.phone, contactDetail: '+91 99047 95771'),
  ];
}

class AppString {
  AppString._();

  static const appName = 'RaviLakhtariya';
}

class PrefConstants {
  static const String myUser = 'myUser';
  static const String userCredential = 'userCredential';
  static const String isLogged = 'isLogged';
  static const String username = 'username';
  static const String isGuestUser = 'isAnonymous';
  static const String accessToken = 'accessToken';
  static const String tokenExpireTime = 'tokenExpiry';
  static const String lastLoginDate = 'lastLoginDate';
  static const String userId = 'userId';
  static const String refreshToken = 'refreshToken';
  static const String darkMode = 'darkMode';
  static const String deviceId = 'deviceId';
  static const String firebaseToken = 'firebaseToken';
  static const String skipLogin = 'skipLogin';
  static const String language = 'lang';
  static const String showIntro = 'showIntro';
  static const String pdfPath = 'pdfPath';
  static const String imagePath = 'imagePath';
  static const String jsonPath = 'jsonPath';
  static const String tempPath = 'tempPath';
  static const String databasePath = 'databasePath';
  static const String lastSignInTime = 'lastSignInTime';
}

class SocialLinks {
  static const linkedin = 'https://www.linkedin.com/in/ravilakhtariya';
  static const twitter = 'https://twitter.com/styloholic_007?lang=en';
  static const instagram = 'https://instagram.com/styloholic_007';
  static const youtube =
      'https://www.youtube.com/channel/UCHAlu3zXQPxUWRiqP-VZ9Dg';
  static const pratilipi =
      'https://gujarati.pratilipi.com/user/%E0%AA%B0%E0%AA%B5%E0%AA%BF-%E0%AA%B2%E0%AA%96%E0%AA%A4%E0%AA%B0%E0%AB%80%E0%AA%AF%E0%AA%BE-6cm06h6ul9';
  static const playStore =
      'https://play.google.com/store/apps/developer?id=Gunatitsolutions';
  static const appStore = '';
}

class RegexPatterns {
  static RegExp urlRegex = RegExp(
      r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");
  static RegExp emailRegex = RegExp(
      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
      caseSensitive: false,
      multiLine: true);
  static RegExp phoneRegex = RegExp(r'^(^(?:[+0]9)?[0-9]{10,12}$)$',
      caseSensitive: false, multiLine: false);
}
