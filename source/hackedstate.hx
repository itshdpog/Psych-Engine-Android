import flixel.FlxSprite;
import flixel.FlxState;
import flixel.*;
import flixel.input.keyboard.FlxKey;

		#if mobileC
		addVirtualPad(UP_DOWN, A_B);
		#end

class hackedState extends FlxState
{
    var sus:FlxSprite;

    public function new()
    {
        super();
    }
    override public function create()
    {
        super.create();

        sus = new FlxSprite(0, 0);
        sus.loadGraphic(Paths.image("easter egg/hacked", "shared"));
        FlxG.sound.play(Paths.sound("sounds/hacked", "preload"), 1, false);

		if (FlxG.keys.justPressed.ENTER)
		{
					fancyOpenURL("https://youtube.com/c/KickaFly");
			#end
		}