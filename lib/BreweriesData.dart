class BreweriesData {
	String? id;
	String? name;
	String? breweryType;
	String? address1;
	String? address2;
	String? address3;
	String? city;
	String? stateProvince;
	String? postalCode;
	String? country;
	String? longitude;
	String? latitude;
	String? phone;
	String? websiteUrl;
	String? state;
	String? street;

	BreweriesData(
			{this.id,
				this.name,
				this.breweryType,
				this.address1,
				this.address2,
				this.address3,
				this.city,
				this.stateProvince,
				this.postalCode,
				this.country,
				this.longitude,
				this.latitude,
				this.phone,
				this.websiteUrl,
				this.state,
				this.street});

	BreweriesData.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		breweryType = json['brewery_type'];
		address1 = json['address_1'];
		address2 = json['address_2'];
		address3 = json['address_3'];
		city = json['city'];
		stateProvince = json['state_province'];
		postalCode = json['postal_code'];
		country = json['country'];
		longitude = json['longitude'];
		latitude = json['latitude'];
		phone = json['phone'];
		websiteUrl = json['website_url'];
		state = json['state'];
		street = json['street'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['name'] = this.name;
		data['brewery_type'] = this.breweryType;
		data['address_1'] = this.address1;
		data['address_2'] = this.address2;
		data['address_3'] = this.address3;
		data['city'] = this.city;
		data['state_province'] = this.stateProvince;
		data['postal_code'] = this.postalCode;
		data['country'] = this.country;
		data['longitude'] = this.longitude;
		data['latitude'] = this.latitude;
		data['phone'] = this.phone;
		data['website_url'] = this.websiteUrl;
		data['state'] = this.state;
		data['street'] = this.street;
		return data;
	}
}