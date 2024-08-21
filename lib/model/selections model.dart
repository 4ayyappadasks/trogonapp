// To parse this JSON data, do
//
//     final selections = selectionsFromJson(jsonString);

import 'dart:convert';

Selections selectionsFromJson(String str) =>
    Selections.fromJson(json.decode(str));

String selectionsToJson(Selections data) => json.encode(data.toJson());

class Selections {
  var status;
  String message;
  var isPurchased;
  LastUnlocked lastUnlocked;
  LastAttendedExam lastAttendedExam;
  List<Datum> data;
  Package package;

  Selections({
    required this.status,
    required this.message,
    required this.isPurchased,
    required this.lastUnlocked,
    required this.lastAttendedExam,
    required this.data,
    required this.package,
  });

  factory Selections.fromJson(Map<String, dynamic> json) => Selections(
        status: json["status"],
        message: json["message"],
        isPurchased: json["is_purchased"],
        lastUnlocked: LastUnlocked.fromJson(json["last_unlocked"]),
        lastAttendedExam: LastAttendedExam.fromJson(json["last_attended_exam"]),
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        package: Package.fromJson(json["package"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "is_purchased": isPurchased,
        "last_unlocked": lastUnlocked.toJson(),
        "last_attended_exam": lastAttendedExam.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "package": package.toJson(),
      };
}

class Datum {
  var id;
  var title;
  var index;
  IsLocked isLocked;
  List<Section> sections;
  Completion completion;
  dynamic exam;

  Datum({
    required this.id,
    required this.title,
    required this.index,
    required this.isLocked,
    required this.sections,
    required this.completion,
    required this.exam,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        index: json["index"],
        isLocked: isLockedValues.map[json["is_locked"]]!,
        sections: List<Section>.from(
            json["sections"].map((x) => Section.fromJson(x))),
        completion: completionValues.map[json["completion"]]!,
        exam: json["exam"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "index": index,
        "is_locked": isLockedValues.reverse[isLocked],
        "sections": List<dynamic>.from(sections.map((x) => x.toJson())),
        "completion": completionValues.reverse[completion],
        "exam": exam,
      };
}

enum Completion { THE_02 }

final completionValues = EnumValues({"0/2": Completion.THE_02});

class ExamClass {
  var id;
  var title;
  var levelTitle;
  IsLocked free;
  var link;
  var isAttended;
  var isAttendedNew;

  ExamClass({
    required this.id,
    required this.title,
    required this.levelTitle,
    required this.free,
    required this.link,
    required this.isAttended,
    required this.isAttendedNew,
  });

  factory ExamClass.fromJson(Map<String, dynamic> json) => ExamClass(
        id: json["id"],
        title: json["title"],
        levelTitle: json["level_title"],
        free: isLockedValues.map[json["free"]]!,
        link: json["link"],
        isAttended: json["is_attended"],
        isAttendedNew: json["is_attended_new"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "level_title": levelTitle,
        "free": isLockedValues.reverse[free],
        "link": link,
        "is_attended": isAttended,
        "is_attended_new": isAttendedNew,
      };
}

enum IsLocked { OFF, ON }

final isLockedValues = EnumValues({"off": IsLocked.OFF, "on": IsLocked.ON});

class Section {
  var id;
  Title title;
  var thumbnail;
  var icon;
  IsLocked free;
  var isAttendedNew;
  var isAttended;
  var isCompleted;
  var total;
  VideoCount videoCount;
  var completed;

  Section({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.icon,
    required this.free,
    required this.isAttendedNew,
    required this.isAttended,
    required this.isCompleted,
    required this.total,
    required this.videoCount,
    required this.completed,
  });

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        id: json["id"],
        title: titleValues.map[json["title"]]!,
        thumbnail: json["thumbnail"],
        icon: json["icon"],
        free: isLockedValues.map[json["free"]]!,
        isAttendedNew: json["is_attended_new"],
        isAttended: json["is_attended"],
        isCompleted: json["is_completed"],
        total: json["total"],
        videoCount: videoCountValues.map[json["video_count"]]!,
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": titleValues.reverse[title],
        "thumbnail": thumbnail,
        "icon": icon,
        "free": isLockedValues.reverse[free],
        "is_attended_new": isAttendedNew,
        "is_attended": isAttended,
        "is_completed": isCompleted,
        "total": total,
        "video_count": videoCountValues.reverse[videoCount],
        "completed": completed,
      };
}

enum Title { MALAYALAM, PSYCHOLOGY }

final titleValues =
    EnumValues({"Malayalam": Title.MALAYALAM, "Psychology": Title.PSYCHOLOGY});

enum VideoCount { THE_0_VIDEOS, THE_1_VIDEOS }

final videoCountValues = EnumValues(
    {"0 Videos": VideoCount.THE_0_VIDEOS, "1 Videos": VideoCount.THE_1_VIDEOS});

class LastAttendedExam {
  LastAttendedExam();

  factory LastAttendedExam.fromJson(Map<String, dynamic> json) =>
      LastAttendedExam();

  Map<String, dynamic> toJson() => {};
}

class LastUnlocked {
  var id;
  var title;
  var index;
  IsLocked isLocked;

  LastUnlocked({
    required this.id,
    required this.title,
    required this.index,
    required this.isLocked,
  });

  factory LastUnlocked.fromJson(Map<String, dynamic> json) => LastUnlocked(
        id: json["id"],
        title: json["title"],
        index: json["index"],
        isLocked: isLockedValues.map[json["is_locked"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "index": index,
        "is_locked": isLockedValues.reverse[isLocked],
      };
}

class Package {
  CoursePrice coursePrice;

  Package({
    required this.coursePrice,
  });

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        coursePrice: CoursePrice.fromJson(json["course_price"]),
      );

  Map<String, dynamic> toJson() => {
        "course_price": coursePrice.toJson(),
      };
}

class CoursePrice {
  var id;
  var packageName;
  var type;
  var courseId;
  var sectionId;
  var amount;
  var discount;
  var isFree;
  var packageType;
  var remarks;
  var validity;
  var validityInMonth;
  var razorpayApiKey;
  var subtitle;
  var totalAmount;
  var payableAmount;

  CoursePrice({
    required this.id,
    required this.packageName,
    required this.type,
    required this.courseId,
    required this.sectionId,
    required this.amount,
    required this.discount,
    required this.isFree,
    required this.packageType,
    required this.remarks,
    required this.validity,
    required this.validityInMonth,
    required this.razorpayApiKey,
    required this.subtitle,
    required this.totalAmount,
    required this.payableAmount,
  });

  factory CoursePrice.fromJson(Map<String, dynamic> json) => CoursePrice(
        id: json["id"],
        packageName: json["package_name"],
        type: json["type"],
        courseId: json["course_id"],
        sectionId: json["section_id"],
        amount: json["amount"],
        discount: json["discount"],
        isFree: json["is_free"],
        packageType: json["package_type"],
        remarks: json["remarks"],
        validity: json["validity"],
        validityInMonth: json["validity_in_month"],
        razorpayApiKey: json["razorpay_api_key"],
        subtitle: json["subtitle"],
        totalAmount: json["total_amount"],
        payableAmount: json["payable_amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "package_name": packageName,
        "type": type,
        "course_id": courseId,
        "section_id": sectionId,
        "amount": amount,
        "discount": discount,
        "is_free": isFree,
        "package_type": packageType,
        "remarks": remarks,
        "validity": validity,
        "validity_in_month": validityInMonth,
        "razorpay_api_key": razorpayApiKey,
        "subtitle": subtitle,
        "total_amount": totalAmount,
        "payable_amount": payableAmount,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
