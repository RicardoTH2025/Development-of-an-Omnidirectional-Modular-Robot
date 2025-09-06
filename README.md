<div align="center">

# Development-of-an-Omnidirectional-Modular-Robot  
### Manuscript ID: 9672    
</div>
Fernando Lucio-Reyna<sup>1</sup>, Ricardo Tapia-Herrera<sup>2</sup>, Tonatiuh Hernández-Cortés<sup>3</sup>, Israel Lizardo-Parra<sup>1</sup>, Jesús A. Meda-Campaña<sup>1</sup>  
  
¹ Instituto Politécnico Nacional, SEPI ESIME Zacatenco, Ciudad de México, México  
² SECIHTI-IPN, Ciudad de México, México  
³ Universidad Politécnica de Pachuca, Zempoala, México

---

## 🛠 Requirements

To run these programs you need:

- **MATLAB/Simulink R2024a** or later  
- **Multibody Simulation Toolbox** (required to load the robot’s multibody model)

> ⚠️ Simulink files are linked to MATLAB functions that contain the parameters of the kinematics and plotting functions. We recommend downloading the **complete directory** to ensure all dependencies are included.

---

## Included files
📂 Main simulation files 
| Simulink File           | Related Figure(s)    | Description                                                                 |
|--------------------------|---------------------|-----------------------------------------------------------------------------|
| `Multibody_front.slx`    | Fig. 7              | Executes the simulation for single module case.                             |
| `Multibody_2modules.slx` | Fig. 8              | Executes the simulation when two modules are connected.                     |
| `Multibody_3modules.slx` | Fig. 9              | Executes the simulation when three modules are connected.      |  
| `Multibody_4modules.slx` | Fig. 10             | Executes the simulation when four modules are connected.       |  



📂 Additional scripts

| MATLAB Script                  | Description                                                                 |
|--------------------------------|----------------------------------------------------------------------------|
| `kinematics_front.m`           | Computes the direct and inverse kinematics of a single module.                  |
| `kinematics_2_modules.m`       | Computes the direct and inverse kinematics  when two modules are connected.  |
| `kinematics_3_modules.m`       | Computes the direct and inverse kinematics  when three modules are connected. |
| `kinematics_4_modules.m`       | Computes the direct and inverse kinematics  when four modules are connected.  |
| `fun_frontal_DK.m`               | Function that computes the direct kinematics to validate the numerical results of single module simulation. |
| `fun_2mod_DK.m`                  | Function that computes the direct kinematics to validate the numerical results  when two modules are connected. |
| `fun_3mod_DK.m`                  | Function that computes the direct kinematics to validate the numerical results when three modules are connected.  |
| `fun_4mod_DK.m`                  | Function that computes the direct kinematics to validate the numerical results when four modules are connected. |
| `results.m`                  | Function used to plot the reulst of kinematic and multibody models. |

📂 Additional files

The STEP files correspond to the solids geometry used to construct the multibody model of the robot. The included STEP files are:

| STL file                 | Description                                                                 |
|--------------------------------|----------------------------------------------------------------------------|
| `Base_Conector_Hembra_Predeterminado_sldprt.STEP`     | Female connector                  |
| `Base_Conector_Macho_Predeterminado_sldprt.STEP`      | Computes the direct and inverse kinematics  when two modules are connected.  |
| `Base_Motor_Predeterminado_sldprt.STEP`               | Computes the direct and inverse kinematics  when three modules are connected. |
| `Base_Predeterminado_sldprt.STEP`                     | Computes the direct and inverse kinematics  when four modules are connected.  |
| `Base_Soporte_Motor_Predeterminado_sldprt.STEP`       | Function that computes the direct kinematics to validate the numerical results of single module simulation. |
| `Bateria_Predeterminado_sldprt.STEP`                  | Function that computes the direct kinematics to validate the numerical results  when two modules are connected. |
| `Bateria_soporte_Inf_1_Predeterminado_sldprt.STEP`    | Function that computes the direct kinematics to validate the numerical results when three modules are connected.  |
| `Bateria_soporte_Inf_2_Predeterminado_sldprt.STEP`    | Function that computes the direct kinematics to validate the numerical results when four modules are connected. |
| `Bateria_Soporte_Sup_Predeterminado_sldprt.STEP`      | Function used to plot the reulst of kinematic and multibody models. |
| `Cople_Predeterminado_sldprt.STEP`                    | Computes the direct and inverse kinematics of a single module.                  |
| `cubierta_superior_Predeterminado_sldprt.STEP`        | Computes the direct and inverse kinematics  when two modules are connected.  |
| `ground_Predeterminado_sldprt.STEP`                   | Computes the direct and inverse kinematics  when three modules are connected. |
| `Mecanismo_Brazo_Predeterminado_sldprt.STEP`          | Computes the direct and inverse kinematics  when four modules are connected.  |
| `Mecanismo_Cubierta_Servo_Predeterminado_sldprt.STEP` | Function that computes the direct kinematics to validate the numerical results of single module simulation. |
| `Mecanismo_Espaciador_Predeterminado_sldprt.STEP`     | Function that computes the direct kinematics to validate the numerical results  when two modules are connected. |
| `Mecanismo_Rptula_Predeterminado_sldprt.STEP`         | Function that computes the direct kinematics to validate the numerical results when three modules are connected.  |
| `Mecanismo_Rueda_Predeterminado_sldprt.STEP`          | Function that computes the direct kinematics to validate the numerical results when four modules are connected. |
| `Mecanismo_Servo_Predeterminado_sldprt.STEP`          | Function used to plot the reulst of kinematic and multibody models. |
| `RD_Tapa_2_Predeterminado_sldprt.STEP`                | Function that computes the direct kinematics to validate the numerical results when three modules are connected.  |
| `RI_tapa_2_Predeterminado_sldprt.STEP`                | Function that computes the direct kinematics to validate the numerical results when four modules are connected. |
| `Rodillo_Predeterminado_sldprt.STEP`                  | Function used to plot the reulst of kinematic and multibody models. |


## 📊 Results

- Once the Simulink file finishes execution, the **plots of the results** will appear automatically.  
- The figures correspond to the behavior of robot in the proposed cases.  
