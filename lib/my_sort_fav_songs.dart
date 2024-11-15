void main() {
  print(
    // Output = [ 100 , 50 , 10 , 5 , 1 ].
    mySortFavSongs(songsList: [1, 50, 100, 10, 5]),
  );
}

// Time CompLexity ===>>> Big O ( n^2 ).
List<int> mySortFavSongs({required List<int> songsList}) {
  // This Loop Is For Returning Every Song In List.
  for (var i = 0; i < songsList.length; i++) {
    int largestNumberIndex = i;
    int temp = songsList[i];
    // This Loop Is For Comparison.
    for (var j = i + 1; j < songsList.length; j++) {
      if (songsList[largestNumberIndex] < songsList[j]) {
        largestNumberIndex = j;
      }
    }
    songsList[i] = songsList[largestNumberIndex];
    songsList[largestNumberIndex] = temp;
  }
  return songsList;
}
