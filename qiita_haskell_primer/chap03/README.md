# アクション
## 参照透過性
- Haskellの関数は同じ引数に対しては常に同じ値を返す

### 副作用
- Haskellでは参照透過性のない関数は定義できない
- 乱数のように毎回異なる結果を返す関数は定義できない
- 毎回異なる結果を返すようなものは内部に何らかの状態を持っており，結果を返すための処理などで状態が変化していると考えられる
- 状態が変化することを**副作用**という
- 状態に影響を受けて結果が変化する処理には参照透過性がない．
- つまり，副作用は参照透過性と対立する概念である

## アクション
- 副作用が扱えないと困ることもあるが，乱数を返す関数のようなものを定義することは可能 -> アクション
- 乱数や時刻取得やファイル読み込みなど結果が変化する可能性があるもの
- `<-`: アクションから値を取り出す
- doブロックの中でしか使えない
- `=<<`: アクションから値を取り出して関数に渡す
- `>>=`: bind, `=<<`の逆
- `let`: アクションから値を取り出すことができない
  - アクションを変数に束縛することはできる
  - letを使っても値を取り出すには`<-`などを使う必要がある

## 呼び出し
- `main`以外で`do`を使って`main`から呼び出せる
