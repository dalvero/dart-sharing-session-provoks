class Person {
  // ATRIBUT


  // KONSTRUKTOR

  // METHOD
}

class Player {
  // ATRIBUT
  String nickname = "Daniel"; 
  double? damage;
  double? armorHealth;
  double? health;

  // KONSTRUKTOR
  Player(this.nickname, this.health, this.armorHealth, this.damage);  

  Player.empty();

  // KONSTRUKTOR NAMED
  Player.withNickname(this.nickname);

  // KONSTRUKTOR DENGAN DEFAULT HEALT
  Player.darahAwal(this.health);

  // METHOD
  void spawnPlayer(){
    print("Spawn this Player $nickname");
  }

}

void main(List<String> args) {
  // INISIALISASI
  Player p = Player("Zilong", 20, 50, 100); 

  // INISIALISASI
  Player s = Player.empty();

  // INPUT PLAYER S
  s.nickname = "Alphard";
  s.damage = 75.5;
  s.armorHealth = 50.0;
  s.health = 100.0;

  p.damage = 75.5;
  p.armorHealth = 50.0;
  p.health = 100.0;

}