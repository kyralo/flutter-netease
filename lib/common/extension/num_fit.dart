import 'package:netease/common/constants/global_constants.dart';

extension DoubleFit on double {
  double get px {
    return GlobalConstants.setPx(this);
  }

  double get rpx {
    return GlobalConstants.setRpx(this);
  }

  double get pec {
    return GlobalConstants.setPec(this);
  }
}

extension IntFit on int {
  double get px {
    return GlobalConstants.setPx(this.toDouble());
  }

  double get rpx {
    return GlobalConstants.setRpx(this.toDouble());
  }

  double get pec {
    return GlobalConstants.setPec(this.toDouble());
  }
}
