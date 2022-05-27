import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_book/common/config/themes.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 1 / 4,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppTheme.colors.baseColor,
            AppTheme.colors.secondaryColor,
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: AppTheme.colors.baseColor.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            Positioned(
              left: 180,
              child: SvgPicture.asset('assets/vectors/blob.svg'),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Saldo Anda',
                            style: AppTheme.textStyle.f16TextPrimaryW400,
                          ),
                          Text(
                            'Rp 12.420.000',
                            style: AppTheme.textStyle.f22TextPrimaryw700,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    child: Text(
                      'Dompet 1, Dompet 2, Dompet 3',
                      style: AppTheme.textStyle.f14TextPrimaryW600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
