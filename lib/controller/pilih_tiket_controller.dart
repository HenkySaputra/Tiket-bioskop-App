import 'package:get/get.dart';

class PilihTiketController extends GetxController {
  var indexBooking = 0.obs;

  void reset() {
    booking.forEach((element) {
      element.forEach((element) {
        if (element["status"] != "filled") {
          element.update("status", (value) => "available");
        }
      });
    });
  }

  void gantiBooking(int indexBookingTerpilih) {
    indexBooking.value = indexBookingTerpilih;
    booking.refresh();
  }

  void selectKursi(int indexKursiTerpilih) {
    print(booking[indexBooking.value][indexKursiTerpilih]);
    if (booking[indexBooking.value][indexKursiTerpilih]["status"] ==
        "available") {
      reset();
      booking[indexBooking.value][indexKursiTerpilih]
          .update("status", (value) => "selected");
    }
    booking.refresh();
  }

  var booking = List.generate(
    6,
    (indexG) => List<Map<String, dynamic>>.generate(
      75,
      (indexK) {
        if (indexG == 0) {
          // gerbong ke 1
          if (indexK >= 24 && indexK <= 26 || indexK >= 40 && indexK <= 44) {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "filled",
            };
          } else {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "available",
            };
          }
        } else if (indexG == 1) {
          // gerbong ke 2
          if (indexK >= 5 && indexK <= 35) {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "filled",
            };
          } else {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "available",
            };
          }
        } else {
          return {
            "id": "ID-${indexG + 1}-${indexK + 1}",
            "status": "available",
          };
        }
      },
    ),
  ).obs;
}
