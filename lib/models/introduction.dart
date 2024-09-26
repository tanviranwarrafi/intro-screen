import 'package:tutorial/utils/assets.dart';

class Introduction {
  String label;
  String description;
  String image;

  Introduction({this.label = '', this.description = '', this.image = ''});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = label;
    map['description'] = description;
    map['image'] = image;
    return map;
  }
}

List<Introduction> INTRODUCTION_LIST = [
  Introduction(
    label: 'Exciting Part-Time Remote Opportunity with TELUS International AI!',
    description:
        'Discover a flexible part-time remote job with TELUS International AI. Work from home, set your own hours, and complete engaging online tasks. Ideal for those seeking extra income!',
    image: Assets.facebook,
  ),
  Introduction(
    label: 'Flexible Remote Work Opportunity with TELUS International AI!',
    description:
        'Unlock a part-time remote opportunity with TELUS International AI, where you can work from the comfort of your home, set your own schedule, and earn extra income through engaging online tasks.',
    image: Assets.onboard_1,
  ),
  Introduction(
    label: 'Fun Remote Work Opportunity for Kids and Teens with TELUS International AI!',
    description:
        'Discover a rewarding part-time role with TELUS International AI that offers the flexibility to work remotely, allowing you to manage your online projects.',
    image: Assets.onboard_2,
  ),
  Introduction(
    label: 'Exciting Remote Work with TELUS International AI!',
    description:
        'Embrace the freedom of a part-time remote position with TELUS International AI, where you can balance your work and personal life while earning extra income by completing meaningful online assignments from home.',
    image: Assets.bird_1,
  ),
];
