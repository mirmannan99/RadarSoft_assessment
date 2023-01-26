String ABCheck(String str) {
  for (int i = 0; i < str.length - 4; i++) {
    if (str[i] == 'a' && str[i + 4] == 'b') {
      return 'true';
    }
  }
  return 'false';
}

void main(){
  print(ABCheck("laneea bobrrowed"));
}