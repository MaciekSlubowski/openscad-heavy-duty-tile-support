<div align="center">
  <img src="https://github.com/user-attachments/assets/c01cd608-4c20-4aca-9c65-c1bf5917dde0" width="19%" alt="OpenSCAD Model" />
  <img src="https://github.com/user-attachments/assets/6c75ba1b-d647-4e2e-b5f6-e80e697833bd" width="19%" alt="Single printed bracket" />
  <img src="https://github.com/user-attachments/assets/d95c5513-eece-4b6f-870f-f3076b8362e1" width="19%" alt="Three printed brackets" />
  <img src="https://github.com/user-attachments/assets/232edd9c-d4bc-4744-949f-9bcbcd6a26ab" width="19%" alt="Empty mounted shelf" />
  <img src="https://github.com/user-attachments/assets/ea738a94-1874-42a6-96e7-51e2ee4dc5c7" width="19%" alt="Load test with water jugs" />
  <br>
  <i>From left to right: OpenSCAD model, freshly printed PETG brackets, empty wall-mounted shelf, and extreme load testing with three large water jugs (~60kg).</i>
</div>

# Floor Tile Shelf Bracket

A heavy-duty, parametric 3D-printable wall bracket designed in OpenSCAD to repurpose standard floor tiles into sturdy wall shelves. 

## Overview
This bracket features a massive solid wedge design combined with minimal mounting tabs, ensuring maximum load-bearing capacity while maintaining a clean look. The OpenSCAD file is fully parametric, allowing you to easily adjust tile width, thickness, and clearance.

## Key Features
* **Heavy-Duty Support:** The solid wedge structure supports the entire depth of the tile.
* **Front Retaining Lip:** Features a secure front lip to prevent the tile from sliding off.
* **Parametric Design:** Easily customizable variables in the `.scad` file to fit different tile dimensions.
* **Ready to Print:** The model is pre-rotated 90 degrees in the code to print flat on its side, ensuring the layer lines run perpendicular to the load for maximum mechanical strength.

## Dimensions & Compatibility
* **Target Tile:** Designed for standard tiles with a nominal width of 195 mm and 10 mm thickness.
* **Tolerances:** Includes a built-in 2.5 mm shrinkage clearance.
* **Build Volume:** The generated bracket measures approximately 227.5 x 213 mm. It is perfectly optimized to fit on 235x235 mm print beds (such as the Creality Ender-3 V2).

## Printing Recommendations
* **Material:** PETG is highly recommended due to its superior impact resistance and lower tendency to creep under continuous heavy loads compared to PLA.
* **Slicer Settings:** When setting up your profile in Ultimaker Cura or similar slicers, use at least **4-5 perimeters (walls)** and a strong structural infill (e.g., 30-40% Cubic or Gyroid).
* **Supports:** No supports are required.

## Assembly
Mount the bracket to the wall using flat-head screws (up to 6mm diameter) and wide flat washers. Ensure you use appropriate wall anchors for your wall type (e.g. drywall, or brick) before sliding the tile into the top recess.

## How to Print & Install

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

## 📄 License & Credits

This project is open-source and provided strictly for personal, educational, and non-commercial purposes. You are free to explore, modify, and 3D print the bracket for your own needs.

* **Credits:** Developed and engineered by Maciej Ślubowski.
* **Disclaimer:** Always ensure your wall anchors and structural hardware are adequately rated for your intended load.
