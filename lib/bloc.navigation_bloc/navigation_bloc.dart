import 'package:bloc/bloc.dart';
import '../pages/Events.dart';
import '../pages/Settings.dart';
import '../pages/MyProfile.dart';
import '../pages/MessagerPage.dart';
import '../CardProperties/credit_card_widgets.dart';
import '../pages/NewFeed.dart';

enum NavigationEvents {
  NewFeedClickedEvent,
  MyProfileClickedEvent,
  MessagerClickedEvent,
  CardClickedEvent,
  EventClickedEvent,
  SettingsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyProfile();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.NewFeedClickedEvent:
        yield NewFeed();
        break;
      case NavigationEvents.MyProfileClickedEvent:
        yield MyProfile();
        break;
      case NavigationEvents.MessagerClickedEvent:
        yield MyMessagerPage();
        break;
      case NavigationEvents.CardClickedEvent:
        yield MyCard(
          cardHolderName: null,
          cardNumber: null,
          cvvCode: null,
          expiryDate: null,
          showBackView: null,
        );
        break;
      case NavigationEvents.EventClickedEvent:
        yield MyEvents();
        break;
      case NavigationEvents.SettingsClickedEvent:
        yield Settings();
        break;
    }
  }
}
