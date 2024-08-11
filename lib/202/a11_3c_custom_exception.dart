class FileDownloadException implements Exception {
  // burda extends kullanmazasin. Extend standattir.
  //implements  bir classtan baska bir classi copy etme. butun metjodlarini almaktir.
  // kullaniliyor extend implements arastir
  @override
  String toString() {
    return 'File download has failed';
  }
}
