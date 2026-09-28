/*
  Floor Tile Shelf Bracket / Support
  Version: HEAVY-DUTY SOLID WEDGE + MINIMAL MOUNTING TABS
  Optimized size: 227.5 x 213 mm (Fits a 235x235 bed at 100% scale)
*/

// ==========================================
// --- TILE AND POSITIONING PARAMETERS ---
// ==========================================
tile_nominal_width = 195;    // Nominal width of the tile (19.5 cm)
shrinkage_clearance = 2.5;   // Plastic shrinkage compensation / tolerance
tile_width = tile_nominal_width + shrinkage_clearance; 
tile_thickness = 10;         // Thickness of the tile (1 cm)

// ==========================================
// --- BRACKET DESIGN PARAMETERS ---
// ==========================================
bracket_width = 45;          // Overall width/thickness of the printed bracket (4.5 cm) 
wall_base_thickness = 15;    // Thickness of the base resting against the wall

// Tile sits flush with the back section
wall_offset = wall_base_thickness; 

front_arm_thickness = 27;    // Thickness of the base at the very front (under the retaining lip)
recess_depth = 12;           // Depth of the groove holding the tile
front_lip = 15;              // Front retaining lip to secure the tile in place

// --- NEW PROPORTIONS (SOLID WEDGE) ---
wedge_height = 165;          // Height of the main supporting wedge against the wall
top_tab_height = 24;         // Minimal top mounting tab (just enough for the washer/hole)
bottom_tab_height = 24;      // Minimal bottom mounting tab (just enough for the washer/hole)

// ==========================================
// --- SCREW MOUNTING PARAMETERS ---
// ==========================================
hole_diameter = 6.5;         // Large hole for a 6mm screw with a flat washer
hole_margin = 12;            // Safe distance from the hole center to the edge of the tab

// --- AUXILIARY CALCULATIONS ---
total_length = wall_offset + tile_width + front_lip;

// Model rotated on its side (ready for 3D printing)
rotate([90, 0, 0])
shelf_bracket();

// ==========================================
// --- MAIN GENERATOR MODULE ---
// ==========================================
module shelf_bracket() {
    difference() {
        // 1. MAIN BODY (MASSIVE WEDGE + MOUNTING TABS)
        union() {
            // MAIN SUPPORT WEDGE (Covers the entire space under the tile)
            hull() {
                // Wall block (from the flat top to the very bottom of the wedge)
                translate([0, 0, -wedge_height])
                    cube([wall_base_thickness, bracket_width, wedge_height]);
                
                // Front end block (retaining lip and its direct support)
                translate([total_length - front_lip, 0, -front_arm_thickness])
                    cube([front_lip, bracket_width, front_arm_thickness]);
            }

            // TOP MOUNTING TAB (Minimal, just to fit the screw)
            translate([0, 0, 0])
                cube([wall_base_thickness, bracket_width, top_tab_height]);

            // BOTTOM MOUNTING TAB (Minimal, just to fit the screw)
            translate([0, 0, -wedge_height - bottom_tab_height])
                cube([wall_base_thickness, bracket_width, bottom_tab_height]);
        }

        // 2. CUTOUTS
        
        // Tile recess (Creates a perfect groove routed into the top of the wedge)
        translate([wall_offset, -1, -recess_depth])
            cube([tile_width, bracket_width + 2, recess_depth + 1]);

        // ==========================================
        // --- MOUNTING HOLES (FLAT) ---
        // ==========================================
        
        // TOP HOLE - perfectly centered on the minimal tab
        screw_hole(0, bracket_width/2, top_tab_height - hole_margin); 

        // BOTTOM HOLE - perfectly centered on the minimal tab
        screw_hole(0, bracket_width/2, -wedge_height - bottom_tab_height + hole_margin);
    }
}

// Module carving a simple through-hole for a screw and washer
module screw_hole(x, y, z) {
    translate([x, y, z]) rotate([0, 90, 0]) {
        // Basic through-hole cylinder
        translate([0, 0, -10])
            cylinder(h=wall_base_thickness+30, d=hole_diameter, $fn=30);
    }
}