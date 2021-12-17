class ArtistModel{
  String id;
  String artistName;
  String description;
  String musicStyle;
  String photoUrl;
  Set<String> events;

  ArtistModel(this.id, this.artistName, this.description, this.musicStyle,
      this.photoUrl, this.events);
}