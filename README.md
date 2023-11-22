
# Cryio's_application

### Overview

This project is a mobile application built with Flutter and Dart. It serves as a versatile platform with various features, including a dynamic dashboard, user authentication, and more. The application follows a structured architecture and utilizes several libraries and tools to enhance functionality and user experience.

### System requirements

Dart SDK Version 2.18.0 or greater.<br>
Flutter SDK Version 3.3.0 or greater.

### Figma design for refrence

[Project](https://www.figma.com/file/VfFZGC6PmsM6e7hTfQaEmi/Synergy?type=design&node-id=33%3A444&mode=design&t=8kv3jxHmZcHsl1n1-1)<br>

[Prototype](https://www.figma.com/proto/VfFZGC6PmsM6e7hTfQaEmi/Synergy?type=design&node-id=33-696&t=OH4Vd0QvkHxCdy1i-1&scaling=scale-down&page-id=33%3A444&starting-point-node-id=33%3A696&mode=design)

### Application structure

After successful build, the application structure should look like this:

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
## Libraries and Tools

- [`get`](https://pub.dev/packages/get)
- [`cupertino_icons`](https://pub.dev/packages/cupertino_icons)
- [`flutter_animate`](https://pub.dev/packages/flutter_animate)
- [`blobs`](https://pub.dev/packages/blobs)
- [`csv`](https://pub.dev/packages/csv)
- [`email_validator`](https://pub.dev/packages/email_validator)
- [`path_provider`](https://pub.dev/packages/path_provider)
- [`file`](https://pub.dev/packages/file)
- [`fl_chart`](https://pub.dev/packages/fl_chart)
- [`flutter_svg`](https://pub.dev/packages/flutter_svg)


## Features

- **Dynamic Dashboard:** A versatile dashboard providing real-time updates.
- **User Authentication:** Secure user login and registration functionality.
- **Responsive Design:** Ensures a consistent experience across different devices.
- **Data Management:** Efficient handling and storage of application data.

### Support

For issues, questions, or feedback, feel free to [create issues](https://github.com/Cryio/Synergy_Project/issues) or [start discussions](https://github.com/Cryio/Synergy_Project/discussions).
