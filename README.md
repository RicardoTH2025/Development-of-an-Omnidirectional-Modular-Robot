<div align="center">

# Development of an Omnidirectional Modular Robot  
### Manuscript ID: 9672    

Fernando Lucio-Reyna<sup>1</sup>, Ricardo Tapia-Herrera<sup>2</sup>, Tonatiuh Hernández-Cortés<sup>3</sup>, Israel Lizardo-Parra<sup>1</sup>, Jesús A. Meda-Campaña<sup>1</sup>  

¹ Instituto Politécnico Nacional, SEPI ESIME Zacatenco, Ciudad de México, México  
² SECIHTI-IPN, Ciudad de México, México  
³ Universidad Politécnica de Pachuca, Zempoala, México  

</div>

---

## 🛠 Requirements

To run these programs you need:

- **MATLAB/Simulink R2024a** or later  
- **Multibody Simulation Toolbox** (required to load the robot’s multibody model)

> ⚠️ Simulink files are linked to MATLAB functions that contain the kinematic parameters and plotting functions.  
> We recommend downloading the **complete directory** to ensure all dependencies are included.

---

## 📂 Included Files

### Main simulation files

| Simulink File           | Related Figure(s) | Description                                                  |
|--------------------------|------------------|--------------------------------------------------------------|
| `Multibody_front.slx`    | Fig. 7           | Executes the simulation for a single module.                 |
| `Multibody_2modules.slx` | Fig. 8           | Executes the simulation when two modules are connected.      |
| `Multibody_3modules.slx` | Fig. 9           | Executes the simulation when three modules are connected.    |
| `Multibody_4modules.slx` | Fig. 10          | Executes the simulation when four modules are connected.     |

---

### Additional MATLAB scripts

| Script                      | Description                                                                 |
|-----------------------------|-----------------------------------------------------------------------------|
| `kinematics_front.m`        | Computes the direct and inverse kinematics of a single module.              |
| `kinematics_2_modules.m`    | Computes the direct and inverse kinematics when two modules are connected.  |
| `kinematics_3_modules.m`    | Computes the direct and inverse kinematics when three modules are connected.|
| `kinematics_4_modules.m`    | Computes the direct and inverse kinematics when four modules are connected. |
| `fun_frontal_DK.m`          | Function to compute direct kinematics for a single module (validation).     |
| `fun_2mod_DK.m`             | Function to compute direct kinematics when two modules are connected.       |
| `fun_3mod_DK.m`             | Function to compute direct kinematics when three modules are connected.     |
| `fun_4mod_DK.m`             | Function to compute direct kinematics when four modules are connected.      |
| `results.m`                 | Script to plot the results of the kinematic and multibody models.           |

---

### Additional files

These STEP files correspond to the 3D CAD geometries used to construct the multibody model of the robot:

| STEP file                                  | Description                  |
|--------------------------------------------|------------------------------|
| `Base_Conector_Hembra_Predeterminado_sldprt.STEP` | Female connector             |
| `Base_Conector_Macho_Predeterminado_sldprt.STEP`  | Male connector               |
| `Base_Motor_Predeterminado_sldprt.STEP`           | Motor base                   |
| `Base_Predeterminado_sldprt.STEP`                 | Main frame base              |
| `Base_Soporte_Motor_Predeterminado_sldprt.STEP`   | Motor support                |
| `Bateria_Predeterminado_sldprt.STEP`              | Battery                      |
| `Bateria_soporte_Inf_1_Predeterminado_sldprt.STEP`| Lower battery support (1)    |
| `Bateria_soporte_Inf_2_Predeterminado_sldprt.STEP`| Lower battery support (2)    |
| `Bateria_Soporte_Sup_Predeterminado_sldprt.STEP`  | Upper battery support        |
| `Cople_Predeterminado_sldprt.STEP`                | Coupling                     |
| `cubierta_superior_Predeterminado_sldprt.STEP`    | Upper cover                  |
| `ground_Predeterminado_sldprt.STEP`               | Ground              |
| `Mecanismo_Brazo_Predeterminado_sldprt.STEP`      | Latch arm                    |
| `Mecanismo_Cubierta_Servo_Predeterminado_sldprt.STEP` | Servomotor cover           |
| `Mecanismo_Espaciador_Predeterminado_sldprt.STEP` | Spacer                       |
| `Mecanismo_Rotula_Predeterminado_sldprt.STEP`     | Ball joint                   |
| `Mecanismo_Rueda_Predeterminado_sldprt.STEP`      | Spherical wheel              |
| `Mecanismo_Servo_Predeterminado_sldprt.STEP`      | Servomotor                   |
| `RD_Tapa_2_Predeterminado_sldprt.STEP`            | Wheel cover           |
| `RI_tapa_2_Predeterminado_sldprt.STEP`            | Wheel cover            |
| `Rodillo_Predeterminado_sldprt.STEP`              | Roller                       |

---

## 📊 Results

- Once a Simulink file finishes execution, the **plots of the results** will appear automatically.  
- The figures correspond to the trajectories and kinematic behavior of the robot in the proposed modular configurations (1 to 4 modules).  

---
  
