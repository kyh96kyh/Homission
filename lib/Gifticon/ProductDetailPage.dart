import 'package:flutter/material.dart';
import 'package:homission/Gifticon/Gifticon.dart';
import 'package:homission/Gifticon/GifticonBuyPage.dart';
import 'package:homission/Gifticon/GifticonStorage.dart';

class ProductDetailPage extends StatefulWidget {
  final Gifticon gifticon;

  ProductDetailPage({required this.gifticon});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool _isPurchased = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(width: 16),
          Icon(Icons.share),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, constraints) {
              double width = constraints.maxWidth;
              return Image.asset(
                widget.gifticon.image,
                width: width,
                height: width,
                fit: BoxFit.fill,
              );
            },
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    widget.gifticon.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '${widget.gifticon.point}p',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '${widget.gifticon.contributorName}님 제공',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 16),
                Divider(thickness: 8, height: 8, color: Colors.black12),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    widget.gifticon.contributorDescription,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  if (_isPurchased) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GifticonStorage(gifticons: [widget.gifticon], onTap: () {})), // GifticonStorage 페이지로 이동
                    );
                  } else {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GifticonBuyPage(gifticon: widget.gifticon)),
                    );
                    if (result == true) {
                      setState(() {
                        _isPurchased = true;
                      });
                      final snackBar = SnackBar(
                          content: Text('구매가 완료됐어요'),
                          duration: Duration(seconds: 1),
                          backgroundColor: Colors.grey
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: _isPurchased ? Colors.black : Colors.blue,
                ),
                child: Text(
                  _isPurchased ? '기프티콘 다운로드' : '구매하기',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}