typedef Term = String;
typedef Definition = String;

class Dictionary {
  Map<Term, Definition> _dictionary = {};

  // 단어를 추가함
  void add(Term term, Definition definition) {
    _dictionary[term] = definition;
  }

  // 단어의 정의를 리턴함
  Definition? get(Term term) {
    return _dictionary[term];
  }

  // 단어를 삭제함
  void delete(Term term) {
    _dictionary.remove(term);
  }

  // 단어를 업데이트 함
  void update(Term term, Definition definition) {
    if (_dictionary.containsKey(term)) {
      _dictionary[term] = definition;
    }
  }

  // 사전 단어를 모두 보여줌
  void showAll() {
    _dictionary.forEach((term, definition) {
      print('$term: $definition');
    });
  }

  // 사전 단어들의 총 갯수를 리턴함
  int count() {
    return _dictionary.length;
  }

  // 단어를 업데이트 함. 존재하지 않을시 추가함
  void upsert(Term term, Definition definition) {
    _dictionary[term] = definition;
  }

  // 해당 단어가 사전에 존재하는지 여부를 알려줌
  bool exists(Term term) {
    return _dictionary.containsKey(term);
  }

  // 여러개의 단어를 한번에 추가함
  void bulkAdd(List<Map<String, String>> terms) {
    for (var item in terms) {
      _dictionary[item['term']!] = item['definition']!;
    }
  }

  // 여러개의 단어를 한번에 삭제함
  void bulkDelete(List<Term> terms) {
    for (var term in terms) {
      _dictionary.remove(term);
    }
  }
}

void main() {
  Dictionary dictionary = Dictionary();

  // 단어 추가
  dictionary.add('김치', '대박이네~');
  dictionary.add('아파트', '비싸네~');

  // 단어 정의 가져오기
  print(dictionary.get('김치')); // 대박이네~

  // 단어 업데이트
  dictionary.update('김치', '맛있네~');
  print(dictionary.get('김치')); // 맛있네~

  // 단어 삭제
  dictionary.delete('아파트');
  print(dictionary.get('아파트')); // null

  // 모든 단어 보여주기
  dictionary.showAll(); // 김치: 맛있네~

  // 단어 수 세기
  print(dictionary.count()); // 1

  // 단어 존재 여부 확인
  print(dictionary.exists('김치')); // true
  print(dictionary.exists('아파트')); // false

  // 단어 삽입 및 업데이트
  dictionary.upsert('아파트', '매우 비싸네~');
  print(dictionary.get('아파트')); // 매우 비싸네~

  // 여러 단어 한번에 추가
  dictionary.bulkAdd([
    {'term': '사과', 'definition': '맛있는 과일'},
    {'term': '바나나', 'definition': '노란 과일'}
  ]);
  dictionary.showAll();
  // 김치: 맛있네~
  // 아파트: 매우 비싸네~
  // 사과: 맛있는 과일
  // 바나나: 노란 과일

  // 여러 단어 한번에 삭제
  dictionary.bulkDelete(['김치', '사과']);
  dictionary.showAll();
  // 아파트: 매우 비싸네~
  // 바나나: 노란 과일
}
