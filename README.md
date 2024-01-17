# UniHealth Application

## Problem Statement
Students living in hostels often face challenges in accessing timely and efficient healthcare services, particularly when dealing with illnesses that hinder their ability to visit the health center in person. Additionally, health center staff may struggle to track student health progress and allocate resources effectively.

> [!IMPORTANT]
> United Nations Sustainable Development Goal : 4
> Good Health and Well-being
> 

### For Students
- **Physical Barriers:** Illness can make even short treks to the health center difficult, especially for students with mobility limitations, chronic conditions, or contagious illnesses. Fear of spreading illness to others may further deter visits.
- **Lack of Awareness:** Students may be unaware of available healthcare services or hesitant to seek help due to stigma or fear of judgment. The process of accessing care can be unclear or complex, leading to missed opportunities for preventative measures or early intervention.
- **Communication Bottlenecks:** Traditional methods of communication like phone calls or in-person visits can be inconvenient or ineffective, especially for students facing isolation due to illness. Difficulty reaching or communicating with a doctor can lead to frustration and delayed treatment.

### For Health Centre Staff
- **Difficulty in Monitoring:** Lack of regular monitoring makes it difficult to track progress and adjust care plans as needed.
- **Disconnect with Students:** Physical distance and limited interaction can hamper building trust and rapport with students. This can affect communication, adherence to treatment plans, and overall healthcare outcomes.

### For University Admin and Parents
Parents often feel helpless and anxious when their children, especially at a distance, fall ill. It does not help that none of the health updates about their ward is provided to them systematically. Managing student health concerns on top of existing responsibilities can be overwhelming for wardens, straining their capacity and impacting other duties. The lack of communication and information flow between health centers, wardens, and parents can exacerbate the problem for everyone involved.

## Solution
1. **App with Student Details:** The application includes student name, hostel name, room no., and contact no. as their details.
2. **Health Logs:** Students can create a new log in the app when they experience health issues.
3. **Doctor Access:** Doctors in the health center will have access to new health issue entries to track student health.
4. **Communication Platform:** Students can describe their health issue, and doctors can respond with recommended treatments. If medication is required, students can come to the health center to collect it. In severe cases, health center staff can visit the student to provide assistance.
5. **Health Progress Tracking:** Students can regularly log their health progress for doctors to monitor.
6. **Closure of Health Issues:** Once students feel better, they can close the health issue, and doctors can mark it as complete.

*Note: The above solution is designed to address the mentioned problems and improve communication and healthcare services within the university environment.*


## Application Structure

Upon successful build, the application structure should resemble the following:



```
.
├── android                         - Contains files required to run the application on an Android platform.
├── assets                          - Contains all images and fonts of your application.
├── ios                             - Contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code.
    ├── main.dart                   - Starting point of the application
    ├── app_bar_actions_item.dart   - Definition of the AppBarActionItem widget
    ├── colors.dart                 - Definition of color constants
    ├── components.dart             - Definition of reusable components
    ├── dashboard_header.dart       - Definition of the DashboardHeader widget
    ├── dashboard_screen.dart       - Definition of the main DashboardScreen widget
    ├── data.dart                   - Definition of data-related functionality
    ├── data                        - Placeholder for the data
    ├── detail_list.dart            - Definition of the DetailList widget
    ├── history_table.dart          - Definition of the HistoryTable widget
    ├── info_card.dart              - Definition of the InfoCard widget
    ├── login_screen.dart           - Definition of the LoginPage widget
    ├── register_screen.dart        - Definition of the RegisterPage widget
    ├── root_screen.dart            - Definition of the RootScreen widget
    ├── side_menu.dart              - Definition of the SideMenu widget
    ├── size_config.dart            - Definition of the SizeConfig utility
    ├── style.dart                  - Definition of common styles
    ├── u_list_tile.dart            - Definition of the UListTile widget

```
## System Requirements

- Dart SDK Version 2.18.0 or higher.
- Flutter SDK Version 3.3.0 or higher.

## Figma Design for Reference

- [Project](https://www.figma.com/file/sNhwQRgpUVq5gyDMJ5i4Lw/App-Framework-(Solution-Chal.)?type=design&node-id=0%3A1&mode=design&t=y5eOvFFoF4l8Zxwb-1)

## Libraries and Tools

- [get](https://pub.dev/packages/get)
- [cupertino_icons](https://pub.dev/packages/cupertino_icons)
- [flutter_animate](https://pub.dev/packages/flutter_animate)
- [blobs](https://pub.dev/packages/blobs)
- [csv](https://pub.dev/packages/csv)
- [email_validator](https://pub.dev/packages/email_validator)
- [path_provider](https://pub.dev/packages/path_provider)
- [file](https://pub.dev/packages/file)
- [fl_chart](https://pub.dev/packages/fl_chart)
- [flutter_svg](https://pub.dev/packages/flutter_svg)

## Features

- **Dynamic Dashboard:** A versatile dashboard providing real-time health updates.
- **User Authentication:** Secure user login and registration functionality.
- **Responsive Design:** Ensures a consistent experience across different devices.
- **Data Management:** Efficient handling and storage of health-related data.

## Support

For issues, questions, or feedback, feel free to [create issues](https://github.com/UniHealth/UniHealth_Application/issues) or [start discussions](https://github.com/UniHealth/UniHealth_Application/discussions).

