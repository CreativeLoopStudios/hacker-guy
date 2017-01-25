/// DisableFirewall(firewallToDisable);
var firewall = argument0;

if (instance_exists(firewall))
{
    with (firewall)
    {
        image_speed = 0;
        image_blend = c_black;
        state = FirewallDisabledState;
    }
}

