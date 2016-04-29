var game = new Phaser.Game(800, 600, Phaser.AUTO, '', {
    preload: preload, create: create, update: update, render: render
});

function preload() {
    game.load.spritesheet('drumpad_spritesheet', 'assets/drumpad/drumpad_spritesheet.png', 251, 181);
    game.load.audio('snare', 'assets/drumpad/snare.ogg')
}

function create() {
    var snare = game.add.audio('snare');
    var pad = game.add.button(game.world.centerX, game.world.centerY, 'drumpad_spritesheet', function(){}, this, 1, 1, 0);

    pad.anchor.set(0.5);
    pad.setDownSound(snare);
}

function update() {
}

function render() {
}