A heavy-duty, parametric 3D-printable wall bracket designed in OpenSCAD to repurpose standard floor tiles into sturdy wall shelves.

🎓 About the Project

This project was developed by Maciej Ślubowski to solve a demanding structural challenge: safely supporting up to 60 kg of water on a fragile, ceramic tile shelf. 
The bracket was prototyped and tested on a modified Creality Ender-3 V2 (equipped with a Direct Drive extruder and Satsana fan duct), leveraging parametric OpenSCAD programming to allow easy adjustments for different tile dimensions and material shrinkage clearances.

✨ Key Features

* **Extreme Durability Geometry:** A massive solid wedge design engineered to support the entire depth of the tile, transferring continuous vertical loads effectively to the wall.
* **Parametric & Customizable:** Fully built in OpenSCAD. The `.scad` file allows you to instantly adjust tile width, thickness, and tolerances without manual 3D modeling.
* **Heavy-Duty Print Optimization:** Specifically designed to be printed with extreme slicer settings (10 perimeters, 10 top/bottom layers) to turn the mounting tabs into virtually solid plastic, preventing crushing under heavy hex bolts.
* **Smart Infill Utilization:** Relies on a 3D spatial infill pattern (Cubic) to evenly distribute downward and lateral stress vectors across all three axes (X, Y, Z).
* **Print-Ready Orientation:** The OpenSCAD script pre-rotates the model 90 degrees, ensuring layer lines run perpendicular to the primary load vectors for maximum mechanical shear strength.

🚀 How to Print & Install

Since the model is fully parametric, you can generate an STL for your exact tile dimensions directly in OpenSCAD.

**Crucial Slicer Settings (for 60kg load):**
* **Nozzle:** 0.8 mm (for thicker, stronger extrusion lines).
* **Material:** PETG (Crucial to prevent long-term deformation/material creep under continuous heavy loads. Avoid PLA).
* **Walls/Perimeters:** 10
* **Top/Bottom Layers:** 10
* **Infill:** 30-40% Cubic
* **Supports:** None required.

**Assembly:**
Mount the bracket to the wall using flat-head screws (up to 6mm diameter) and wide flat washers. Ensure you use heavy-duty wall anchors appropriate for your wall type (concrete/brick) before sliding the tile into the top recess.

📄 License & Credits

This project is open-source and provided strictly for personal, educational, and non-commercial purposes. You are free to explore, modify, and 3D print the bracket for your own needs.

* **Credits:** Developed and engineered by Maciej Ślubowski.
* **Disclaimer:** Always ensure your wall anchors and structural hardware are adequately rated for your intended load.
