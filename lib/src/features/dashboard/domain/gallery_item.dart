class GalleryItem {
  final String imageTitle;
  final String imagePrice;
  final String imageDescription;
  final String imagePath;
  final int imageLikes;

  const GalleryItem({
    required this.imageTitle,
    this.imagePrice = '₳ 8.99',
    required this.imageDescription,
    required this.imagePath,
    required this.imageLikes,
  });
}
