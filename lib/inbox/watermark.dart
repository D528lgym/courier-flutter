import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Watermark extends StatelessWidget {

  final String svg = '''
<svg width="134" height="16" viewBox="0 0 134 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.016 7.608H3.624C4.872 7.608 5.4 7.02 5.4 6.084C5.4 5.112 4.872 4.536 3.624 4.536H2.016V7.608ZM6.516 6.084C6.516 7.356 5.7 8.508 3.624 8.508H2.016V12H0.924V3.636H3.624C5.592 3.636 6.516 4.716 6.516 6.084ZM14.1132 8.7C14.1132 10.788 12.6132 12.108 10.7412 12.108C8.88122 12.108 7.46522 10.788 7.46522 8.7C7.46522 6.624 8.92922 5.316 10.7892 5.316C12.6612 5.316 14.1132 6.624 14.1132 8.7ZM8.58122 8.7C8.58122 10.368 9.60122 11.148 10.7412 11.148C11.8812 11.148 12.9972 10.368 12.9972 8.7C12.9972 7.044 11.9052 6.264 10.7772 6.264C9.62522 6.264 8.58122 7.044 8.58122 8.7ZM16.833 12L14.769 5.424H15.885L17.397 10.944L19.029 5.424H20.145L21.741 10.956L23.229 5.424H24.309L22.257 12H21.129L19.545 6.78L17.961 12H16.833ZM28.1888 6.24C27.1208 6.24 26.2327 6.948 26.1128 8.232H30.2648C30.2768 6.948 29.3168 6.24 28.1888 6.24ZM31.2608 9.972C30.9248 11.172 29.8688 12.108 28.2368 12.108C26.3648 12.108 24.9848 10.788 24.9848 8.7C24.9848 6.624 26.3168 5.316 28.2368 5.316C30.1448 5.316 31.3928 6.66 31.3928 8.46C31.3928 8.7 31.3808 8.892 31.3568 9.12H26.1008C26.1848 10.452 27.1208 11.184 28.2368 11.184C29.2208 11.184 29.8448 10.68 30.0848 9.972H31.2608ZM33.9262 8.424V12H32.8342V5.424H33.9262V6.492C34.2982 5.76 35.0062 5.304 36.0502 5.304V6.432H35.7622C34.7182 6.432 33.9262 6.9 33.9262 8.424ZM40.1067 6.24C39.0387 6.24 38.1507 6.948 38.0307 8.232H42.1827C42.1947 6.948 41.2347 6.24 40.1067 6.24ZM43.1787 9.972C42.8427 11.172 41.7867 12.108 40.1547 12.108C38.2827 12.108 36.9027 10.788 36.9027 8.7C36.9027 6.624 38.2347 5.316 40.1547 5.316C42.0627 5.316 43.3107 6.66 43.3107 8.46C43.3107 8.7 43.2987 8.892 43.2747 9.12H38.0187C38.1027 10.452 39.0387 11.184 40.1547 11.184C41.1387 11.184 41.7627 10.68 42.0027 9.972H43.1787ZM44.3441 8.688C44.3441 6.636 45.7001 5.316 47.4761 5.316C48.5081 5.316 49.4561 5.844 49.9121 6.6V3.12H51.0161V12H49.9121V10.764C49.5161 11.496 48.6641 12.108 47.4641 12.108C45.7001 12.108 44.3441 10.728 44.3441 8.688ZM49.9121 8.7C49.9121 7.176 48.8801 6.264 47.6801 6.264C46.4801 6.264 45.4601 7.14 45.4601 8.688C45.4601 10.236 46.4801 11.148 47.6801 11.148C48.8801 11.148 49.9121 10.248 49.9121 8.7ZM57.1527 6.648C57.5727 5.916 58.4487 5.316 59.6127 5.316C61.3887 5.316 62.7327 6.636 62.7327 8.688C62.7327 10.728 61.3767 12.108 59.6127 12.108C58.4127 12.108 57.5607 11.508 57.1527 10.788V12H56.0607V3.12H57.1527V6.648ZM61.6167 8.688C61.6167 7.14 60.5967 6.264 59.3847 6.264C58.1967 6.264 57.1527 7.176 57.1527 8.7C57.1527 10.248 58.1967 11.148 59.3847 11.148C60.5967 11.148 61.6167 10.236 61.6167 8.688ZM66.6661 10.752L68.7061 5.424H69.8341L65.8741 15.096H64.7461L66.0421 11.928L63.3901 5.424H64.6021L66.6661 10.752Z" fill="black"/>
<path d="M85.959 7.09827C85.9863 7.0576 86 7.00336 86 6.96268C85.5085 4.14236 83.0239 2 80.0478 2C76.7031 2 73.9864 4.71185 74.0001 8.04742C74.0274 11.2881 76.7714 13.9999 80.0205 13.9999C82.7918 14.0135 85.1263 12.1694 85.8498 9.66097C85.8771 9.57961 85.8225 9.4847 85.7406 9.44402L85.4949 9.34911C84.5256 9.01013 83.4471 9.13216 82.587 9.68809C82.1911 9.94571 81.9045 10.1491 81.9045 10.1491C81.413 10.4745 80.8123 10.6779 80.1843 10.6779C78.4779 10.6779 77.2901 9.29487 77.099 7.61352L76.9625 6.6915C76.9215 6.40675 76.7304 6.17625 76.4574 6.06777L76.1161 5.93218C76.0615 5.90506 76.0342 5.83726 76.0751 5.78303C77.5359 3.84406 79.3243 4.26439 79.3243 4.26439C79.6383 4.29151 79.9113 4.41354 80.1297 4.5627C80.4437 4.77964 80.6894 5.09151 80.8396 5.44405C81.3857 6.6915 82.6417 7.57285 84.1024 7.57285C84.1024 7.58641 85.4949 7.64064 85.959 7.09827Z" fill="black"/>
<path d="M77.5865 5.16687C77.7758 5.16687 77.9293 5.01337 77.9293 4.82403C77.9293 4.63469 77.7758 4.4812 77.5865 4.4812C77.3971 4.4812 77.2437 4.63469 77.2437 4.82403C77.2437 5.01337 77.3971 5.16687 77.5865 5.16687Z" fill="black"/>
<path d="M77.6523 6.94707C77.7315 7.47451 78.1534 9.1623 80.0258 9.46557C80.0522 9.46557 80.0654 9.42601 80.039 9.41283C79.6039 9.21504 78.4699 8.55575 77.7051 6.9207C77.6919 6.90751 77.6523 6.9207 77.6523 6.94707Z" fill="black"/>
<path d="M96.293 9.67589C96.293 12.2444 94.3381 14.1707 91.7839 14.1707C89.2297 14.1707 87.2891 12.2586 87.2891 9.67589C87.2891 7.06461 89.2297 5.13826 91.7839 5.13826C94.3524 5.12399 96.293 7.06461 96.293 9.67589ZM90.0716 9.67589C90.0716 10.7033 90.8136 11.4596 91.7982 11.4596C92.797 11.4596 93.539 10.7033 93.539 9.67589C93.539 8.61997 92.797 7.84942 91.7982 7.84942C90.8136 7.83516 90.0716 8.61997 90.0716 9.67589Z" fill="black"/>
<path d="M105.597 9.94695C105.597 12.4155 103.87 14.1564 101.444 14.1564C99.0041 14.1564 97.249 12.4155 97.249 9.94695V5.29517H100.06V9.94695C100.06 10.8602 100.588 11.4452 101.43 11.4452C102.243 11.4452 102.786 10.8602 102.786 9.94695V5.29517H105.582V9.94695H105.597Z" fill="black"/>
<path d="M112.546 5.2382V7.80667C112.232 7.7496 111.932 7.70679 111.647 7.70679C110.462 7.70679 109.521 8.32037 109.521 9.9756V13.9853H106.709V5.30955H109.521V6.22278C110.034 5.53786 110.776 5.15259 111.718 5.15259C111.975 5.15259 112.246 5.18113 112.546 5.2382Z" fill="black"/>
<path d="M116.712 2.6697C116.712 3.58293 115.956 4.35347 115.043 4.35347C114.129 4.35347 113.359 3.58293 113.359 2.6697C113.359 1.77073 114.129 1.00019 115.043 1.00019C115.956 0.985922 116.712 1.77073 116.712 2.6697ZM116.427 5.30951V13.9852H113.616V5.30951H116.427Z" fill="black"/>
<path d="M126.159 10.3751H119.966C120.18 11.2741 120.922 11.8306 121.878 11.8306C122.72 11.8306 123.205 11.4739 123.319 11.003H126.088C125.816 12.915 124.19 14.1565 121.964 14.1565C119.395 14.1565 117.383 12.173 117.383 9.61884C117.383 7.07891 119.352 5.12402 121.907 5.12402C124.261 5.12402 126.216 6.9933 126.216 9.362C126.23 9.60458 126.187 10.0612 126.159 10.3751ZM123.277 8.59146C123.205 7.89226 122.535 7.40711 121.778 7.40711C121.008 7.40711 120.394 7.76384 120.094 8.59146H123.277Z" fill="black"/>
<path d="M133.022 5.2382V7.80667C132.708 7.7496 132.409 7.70679 132.123 7.70679C130.939 7.70679 129.997 8.32037 129.997 9.9756V13.9853H127.186V5.30955H129.997V6.22278C130.511 5.53786 131.253 5.15259 132.195 5.15259C132.466 5.15259 132.737 5.18113 133.022 5.2382Z" fill="black"/>
</svg>
''';

  const Watermark({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      svg,
      width: 134.0,
      height: 16.0,
    );
  }
}
