
/*
 * Scene4
 * Created by Eqela Studio 2.0b7.4
 */

public class Scene4 : SEScene
{	
	SESprite sprite1;
	SESprite bg;
	SESprite text;
	SESprite text2;	
	double transparency=0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("#CC9900"),get_scene_width(),get_scene_height());
	
	
	rsc.prepare_image("logo","logo",get_scene_width(),get_scene_height());
	sprite1=add_sprite_for_image(SEImage.for_resource("logo"));
	sprite1.move(0,0);

	rsc.prepare_font("myfont","bold arial color=#ED2FD0 outline-color=black",get_scene_height()*0.08);
	rsc.prepare_font("myfont2","bold arial color=red  outline-color=white",get_scene_height()*0.10);
	text=add_sprite_for_text("Back", "myfont2");
	text.move(get_scene_width()*0.85,get_scene_height()*0.85);

	text2=add_sprite_for_text("This is a logo", "myfont");
	text2.move(0,0);
	}
	
	public void on_key_press(String name,String str) {
		switch_scene(new MainScene());
	}

	public void on_pointer_move(SEPointerInfo pi) {
		if(pi.is_inside(get_scene_width()*0.85,get_scene_height()*0.85,get_scene_height(),get_scene_width())) {
		text.set_alpha(0.5);
		}
		else {
			text.set_alpha(1);
			}
	}
	
	public void set_alpha(double alpha) {
		transparency=alpha;	
	}

	public void on_pointer_press(SEPointerInfo pi) {		
	if(pi.is_inside(get_scene_width()*0.85,get_scene_height()*0.85,get_scene_height(),get_scene_width())) {
			switch_scene(new MainScene());
			}	
	}

	public void cleanup() {
		base.cleanup();
	}
}
