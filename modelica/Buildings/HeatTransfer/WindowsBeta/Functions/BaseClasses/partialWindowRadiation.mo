within Buildings.HeatTransfer.WindowsBeta.Functions.BaseClasses;
partial function partialWindowRadiation
  "partial function for window radiation property"
  input Real traRef[3, N, N, HEM](each min=0, each max=0)
    "Transmittance and reflectance with exterior irradiation and no shading";
  extends
    Buildings.HeatTransfer.WindowsBeta.Functions.BaseClasses.partialGlassRadiation;

  annotation (preferedView="info",
  Documentation(info="<html>
This is a partial function that is used to implement the radiation functions for windows. It defines basic input variables and constants. 
</html>", revisions="<html>
<ul>
<li>
September 16 2010, by Wangda Zuo:<br>
First implementation.
</li>
</ul>
</html>"));
end partialWindowRadiation;
