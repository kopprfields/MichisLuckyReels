/// @description Update position
switch(current_state)
{
	case CoinState.Pressed:
		x = mouse_x;
		y = mouse_y;
		break;
	case CoinState.Dropped:
		if(abs(x-parent.x) > sprite_width/2 || abs(y-parent.y) > sprite_height/2)
		{
			move_towards_point(parent.x, parent.y, clamp(point_distance(x, y, parent.x, parent.y)/7.5, 5, 100));
		}
		else
		{
			if(parent.is_glorp)
			{
				sysGlobal.owned_special_coins++;
			}
			else
			{
				sysGlobal.owned_coins++;
			}
			instance_destroy(parCoin);
		}
		break;
	case CoinState.Used:
		if(action_script != undefined)
		{
			script_execute(action_script);
		}
		break;
}