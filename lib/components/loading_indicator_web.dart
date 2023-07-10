// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void removeLoadingIndicator() {
  html.document.querySelector('#loading-indicator')?.remove();
}
