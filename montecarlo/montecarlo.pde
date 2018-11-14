
float pi;
float x, y, r;
int count = 0;
int num_trials = 1000*100; // 試行回数
Table results; // 結果を保持する表。今回は Table クラスを使用
int drawCount=0;

void setup() {
  size(500, 500);
  background(255);
  frameRate( 70 );
}

void draw() {
  results = new Table();
  results.addColumn("Number of Trials"); // 一番目の列に名前をつける
  results.addColumn("result"); //二番目の列に名前をつける

  if (drawCount<100) {

    for (int i=0; i<num_trials; i++) {
      x = random(1);
      y = random(1);
      r = x * x + y * y;
      if (r < 1) {
        count = count + 1;
        stroke(255, 0, 0);
      } else {
        stroke(0, 0, 255);
      }
      point((int)(x * width), (int)(y * height));
    }

    pi = (float)count / num_trials * 4;

    TableRow newrow = results.addRow(); // Table に新しい行を加えるには、まず addRow() で行を生成する
    newrow.setInt("Number of Trials", num_trials); // 次にその行にデータを格納する
    newrow.setFloat("result", pi); // 同上

    saveTable(results, "results.csv"); // 最後に Table を CSV ファイルとして保存
    println("Done.");
    drawCount++;
  }
  }