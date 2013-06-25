within Buildings.Utilities.Diagnostics;
block AssertEquality "Assert when condition is violated"
  extends BaseClasses.PartialInputCheck(message = "Inputs differ by more than threShold");
equation
  if (time > t0) then
    assert(abs(u1 - u2) < threShold, message + "\n"
      + "  u1         = " + String(u1) + "\n"
      + "  u2         = " + String(u2) + "\n"
      + "  abs(u1-u2) = " + String(abs(u1-u2)) + "\n"
      + "  threShold  = " + String(threShold));
  end if;
annotation (
defaultComponentName="assEqu",
Icon(graphics={Text(
          extent={{-84,108},{90,-28}},
          lineColor={255,0,0},
          textString="u1 = u2")}),           
Documentation(info="<html>
<p>
Model that triggers an assert if 
<i>|u1-u2| &gt; threShold</i>
and <i>t &gt; t<sub>0</sub></i>.
</p>
</html>",
revisions="<html>
<ul>
<li>
January 23, 2013, by Michael Wetter:<br/>
Replaced <code>when</code> test with <code>if</code> test as
equations within a <code>when</code> section are only evaluated
when the condition becomes true.
This fixes <a href=\"https://github.com/lbl-srg/modelica-buildings/issues/72\">issue 72</a>.
</li>
<li>
April 17, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end AssertEquality;