//Without null safety
bool isEmpty(String? str) => str?.length == 0;

void main() {
  isEmpty(null);
  String? arum = 'arum';
  arum = null;
  if(arum != null){
    arum.isNotEmpty;
  }
  arum?.isNotEmpty;
  arum?.isEmpty;
}
