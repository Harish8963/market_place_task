import 'dart:convert';

ListPageModel listPageModelFromJson(String str) =>
    ListPageModel.fromJson(json.decode(str));

String listPageModelToJson(ListPageModel data) => json.encode(data.toJson());

class ListPageModel {
  bool? ok;
  List<MarketplaceRequest>? marketplaceRequests;
  Pagination? pagination;

  ListPageModel({this.ok, this.marketplaceRequests, this.pagination});

  factory ListPageModel.fromJson(Map<String, dynamic> json) => ListPageModel(
        ok: json["ok"],
        marketplaceRequests: json["marketplace_requests"] == null
            ? []
            : List<MarketplaceRequest>.from(
                json["marketplace_requests"]
                    .map((x) => MarketplaceRequest.fromJson(x))),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "marketplace_requests": marketplaceRequests == null
            ? []
            : List<dynamic>.from(marketplaceRequests!.map((x) => x.toJson())),
        "pagination": pagination?.toJson(),
      };
}

class MarketplaceRequest {
  String? idHash;
  UserDetails? userDetails;
  bool? isHighValue;
  DateTime? createdAtDate;
  String? description;
  RequestDetails? requestDetails;
  String? status;
  String? serviceType;
  String? targetAudience;
  bool? isOpen;
  bool? isPanIndia;
  bool? anyLanguage;
  bool? isDealClosed;
  String? slug;

  MarketplaceRequest({
    this.idHash,
    this.userDetails,
    this.isHighValue,
    this.createdAtDate,
    this.description,
    this.requestDetails,
    this.status,
    this.serviceType,
    this.targetAudience,
    this.isOpen,
    this.isPanIndia,
    this.anyLanguage,
    this.isDealClosed,
    this.slug,
  });

  factory MarketplaceRequest.fromJson(Map<String, dynamic> json) =>
      MarketplaceRequest(
        idHash: json["id_hash"],
        userDetails: json["user_details"] == null
            ? null
            : UserDetails.fromJson(json["user_details"]),
        isHighValue: json["is_high_value"],
        createdAtDate: json["created_at_date"] == null
            ? null
            : DateTime.tryParse(json["created_at_date"]),
        description: json["description"],
        requestDetails: json["request_details"] == null
            ? null
            : RequestDetails.fromJson(json["request_details"]),
        status: json["status"],
        serviceType: json["service_type"],
        targetAudience: json["target_audience"],
        isOpen: json["is_open"],
        isPanIndia: json["is_pan_india"],
        anyLanguage: json["any_language"],
        isDealClosed: json["is_deal_closed"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "id_hash": idHash,
        "user_details": userDetails?.toJson(),
        "is_high_value": isHighValue,
        "created_at_date": createdAtDate?.toIso8601String(),
        "description": description,
        "request_details": requestDetails?.toJson(),
        "status": status,
        "service_type": serviceType,
        "target_audience": targetAudience,
        "is_open": isOpen,
        "is_pan_india": isPanIndia,
        "any_language": anyLanguage,
        "is_deal_closed": isDealClosed,
        "slug": slug,
      };
}

class RequestDetails {
  List<String>? categories;
  String? budget;
  String? brand;
  List<String>? platform;
  List<String>? languages;
  String? gender;
  List<String>? cities;

  RequestDetails({
    this.categories,
    this.budget,
    this.brand,
    this.platform,
    this.languages,
    this.gender,
    this.cities,
  });

  factory RequestDetails.fromJson(Map<String, dynamic> json) => RequestDetails(
        categories: json["categories"] == null
            ? []
            : List<String>.from(json["categories"].map((x) => x)),
        budget: json["budget"],
        brand: json["brand"],
        platform: json["platform"] == null
            ? []
            : List<String>.from(json["platform"].map((x) => x)),
        languages: json["languages"] == null
            ? []
            : List<String>.from(json["languages"].map((x) => x)),
        gender: json["gender"],
        cities: json["cities"] == null
            ? []
            : List<String>.from(json["cities"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "categories": categories ?? [],
        "budget": budget,
        "brand": brand,
        "platform": platform ?? [],
        "languages": languages ?? [],
        "gender": gender,
        "cities": cities ?? [],
      };
}

class UserDetails {
  String? name;
  String? profileImage;
  String? company;
  String? designation;

  UserDetails({this.name, this.profileImage, this.company, this.designation});

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        name: json["name"],
        profileImage: json["profile_image"],
        company: json["company"],
        designation: json["designation"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "profile_image": profileImage,
        "company": company,
        "designation": designation,
      };
}

class Pagination {
  bool? hasMore;
  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? totalPages;
  String? nextPageUrl;
  dynamic previousPageUrl;
  String? url;

  Pagination({
    this.hasMore,
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.nextPageUrl,
    this.previousPageUrl,
    this.url,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        hasMore: json["has_more"],
        total: json["total"],
        count: json["count"],
        perPage: json["per_page"],
        currentPage: json["current_page"],
        totalPages: json["total_pages"],
        nextPageUrl: json["next_page_url"],
        previousPageUrl: json["previous_page_url"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "has_more": hasMore,
        "total": total,
        "count": count,
        "per_page": perPage,
        "current_page": currentPage,
        "total_pages": totalPages,
        "next_page_url": nextPageUrl,
        "previous_page_url": previousPageUrl,
        "url": url,
      };
}
