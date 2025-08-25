# Backend Implementation of Wishbone QSPI Flash Controller  

## Overview  
This repository contains the final project of my **Physical Design Internship at ICpedia**.  
The goal was to implement a complete **RTL-to-GDSII flow** for the `wbqspiflash` design using the **OpenROAD & OpenLane toolchain**, optimizing for both **maximum frequency** and **minimum area** while ensuring clean DRC and timing closure.  

---

## Floor Planning and Power Planning  
- **Pin Placement**: Inputs placed on East/West sides and outputs on North/South, following required specs. Pin length set to **2µm** with proper thickness.  
- **Power Delivery Network (PDN)**: Implemented power straps across **all metal layers (M1–M5)**.  
  - Orientation alternated (H–V–H–V–H) to reduce routing interference.  
  - VPWR and VGND used higher metals (M4, M5) for stronger current capacity and reduced IR drop.  
![APB_Arch](https://github.com/MohamedHussein27/ASIC_flow_for_Wishbone_QSPI_Flash/blob/main/Images/PDN.png)

---

## Placement and CTS  
- Tried multiple configurations for placement and clock tree synthesis.  
- **Case 1 (Lower Utilization)**: Better timing slack but larger area.  
- **Case 2 (Higher Utilization)**: Smaller area but worse slack due to aggressive CTS.  
- Learned the trade-off between **timing, area, and congestion** when tuning placement density and CTS skew.  

---

## DRCs and Run Time Tradeoff  
- Experimented with the **`DRT_OPT_ITERS`** parameter during routing.  
- **High iterations (64, 40, 25):** Longer runtime but **zero DRC violations**.  
- **Low iterations (3, 2, 1):** Much faster runtime but **hundreds of violations**.  
- Showed that design quality (QoR) is directly linked to runtime investment.  
![DRC](https://github.com/MohamedHussein27/ASIC_flow_for_Wishbone_QSPI_Flash/blob/main/Images/DRC%20vs%20Runtime.png)

---

## Frequency and Area  
- **First phase**: Pushed the design to achieve **maximum frequency**.  
  - Reached **155 MHz** (≈6.45 ns clock period).  
- **Second phase**: Minimized area while keeping timing closure.  
  - Final core area reduced to **46,004 µm²** with setup slack **+0.03 ns** and hold slack **+0.17 ns** (signoff clean).  
- Demonstrated the trade-off between **performance (frequency)** and **silicon efficiency (area)**.  

---

## GDS and LEF  
- **LEF View**: Abstract, shows only bounding boxes, pins, and blockages.  
- **GDS View**: Full detail with polygons, routing, and mask-level shapes.  
- Verified pin creation layers:  
  - **Metal2 (Layer 69)** → Vertical pins.  
  - **Metal3 (Layer 70)** → Horizontal pins.  
- Confirmed that LEF dimensions matched the floorplan reports exactly.  
|----------------|----------------|
| ![Input Image](https://github.com/MohamedHussein27/ASIC_flow_for_Wishbone_QSPI_Flash/blob/main/Images/GDS.png) | ![Output Image](https://github.com/MohamedHussein27/ASIC_flow_for_Wishbone_QSPI_Flash/blob/main/Images/LEF.png) |

---

## ✅ Final Results  
- **Target Frequency**: 155 MHz  
- **Final Core Area**: 46,004 µm²  
- **Setup Slack (MCA)**: +0.03 ns  
- **Hold Slack (MCA)**: +0.17 ns  
- **Signoff Status**: DRC-clean, timing closure achieved across all corners.  

---

## References  
- [OpenROAD Project](https://theopenroadproject.org/)  
- [OpenLane Flow](https://github.com/The-OpenROAD-Project/OpenLane)  
- [SkyWater Sky130 PDK](https://github.com/google/skywater-pdk)  

---

✍️ **Author**: Mohamed Ahmed Mohamed Hussein  
📅 **Date**: 25/08/2025  
Presented to: **ICpedia PnR Team**  

---

## Contact Me!

- [Email](mailto:Mohamed_Hussein2100924@outlook.com)
- [WhatsApp](https://wa.me/+2001097685797)
- [LinkedIn](https://www.linkedin.com/in/mohamed-hussein-274337231)