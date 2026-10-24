# SQDCM System

## 📌 Project Overview

**SQDCM System** is an industrial monitoring and reporting application concept designed to support manufacturing performance tracking and production management.

SQDCM commonly stands for **Safety, Quality, Delivery, Cost, and Morale**. These five categories help manufacturing teams monitor operational performance, identify issues, and support continuous improvement.

The system can be used to organize production-related information, monitor key performance indicators (KPIs), and provide visibility into manufacturing performance.

## 🎯 Project Objectives

- Monitor key manufacturing performance indicators.
- Support safety and quality tracking.
- Monitor production and delivery performance.
- Record and analyze operational costs.
- Support employee participation and morale tracking.
- Improve reporting and decision-making.
- Promote continuous improvement in manufacturing operations.

## ⚙️ Key Features

- **Safety Monitoring:** Track safety incidents and corrective actions, if implemented.
- **Quality Monitoring:** Record defects, rejections, and quality issues.
- **Delivery Performance:** Monitor production targets and delivery achievement.
- **Cost Tracking:** Support monitoring of manufacturing costs and losses.
- **Morale Tracking:** Support employee-related improvement activities.
- **Reporting Dashboard:** Present performance indicators and trends, if available.
- **Data Management:** Maintain operational records using the configured data-storage system.

*Features should be confirmed against the actual source code before being described as implemented.*

## 📊 SQDCM Framework

| Category | Meaning | Example KPI |
|---|---|---|
| S | Safety | Number of incidents |
| Q | Quality | Defect rate, rejection rate |
| D | Delivery | On-time delivery, production achievement |
| C | Cost | Scrap cost, production cost |
| M | Morale | Training, participation, improvement suggestions |

## 🔄 Typical System Workflow

1. Collect manufacturing and operational data.
2. Enter or import information into the system.
3. Categorize data under Safety, Quality, Delivery, Cost, and Morale.
4. Calculate the configured KPIs.
5. Display performance information and identify deviations.
6. Record corrective actions and improvement activities.
7. Review reports to support operational decisions.

## 🔌 Communication Protocol

The communication protocol depends on the actual system implementation.

| Communication method | Potential use |
|---|---|
| HTTP/HTTPS REST API | Exchange information with web services or other applications |
| SQL Database Connection | Read and write production records |
| Modbus RTU / TCP | Retrieve data from compatible industrial equipment |
| Serial Communication | Exchange data with supported machines or controllers |
| CSV / Excel Import | Import production data from external files |

**Important:** These are possible integration methods, not verified features of this repository. If the application does not communicate with PLCs or external equipment, remove those protocol options and document only the database or file-based interfaces actually used.

## 🛠️ Technology Stack

| Component | Details |
|---|---|
| Programming Language | To be confirmed from source code |
| User Interface | To be confirmed from source code |
| Database | To be confirmed from project configuration |
| Communication Protocol | To be confirmed from implementation |
| Development Environment | To be confirmed from project files |

## 🚀 Getting Started

### Clone the Repository

```bash
git clone https://github.com/imKunalSharma/SQDCM-System.git
```

### Setup Instructions

1. Download or clone the repository.
2. Open the project using its supported development environment.
3. Install required dependencies.
4. Configure the database and application settings, if applicable.
5. Build and run the application.
6. Verify that data entry, calculations, and reports operate as expected.

Refer to the project files for the exact runtime, database, and configuration requirements.

## 📈 Potential Enhancements

- Real-time production dashboards
- Daily, weekly, and monthly reports
- Automatic KPI calculation
- Trend charts and target-versus-actual analysis
- Corrective and preventive action tracking
- Role-based access control
- Excel and PDF report export
- Integration with ERP or MES platforms

## 👨‍💻 Developer

**Kunal Sharma**

Software Development | Industrial Applications | Database Integration | Manufacturing Systems

## 🔗 GitHub Repository

[View SQDCM System on GitHub](https://github.com/imKunalSharma/SQDCM-System)

## 📄 License

Refer to the repository's license file for the applicable usage and redistribution terms.
