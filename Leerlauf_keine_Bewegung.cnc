;PROSIT_REHM
M13/E

;--------------------------------------
; Simple Loop Test
; Start / Finished / Werkzeugwechsel
;--------------------------------------

$START$

; Finished zurücksetzen
RA12
RA15

;--------------------------------------
; Eingänge überwachen
;--------------------------------------
; Auf Startsignal des Roboters warten
E1

; Bedingter Werkzeugwechsel Programm Aufruf
G22 E5 $WERKZEUGWECHSEL$01

E1

G04T2       ; Hier Programm Ablauf Einfügen


; Finished setzen
SA12

; Puffer um sicher zu stellen, dass Signal an Roboter angekommen ist
G04T2
; Zurück zum Anfang
G20 $START$

;--------------------------------------
; Werkzeugwechsel
;--------------------------------------
G98$WERKZEUGWECHSEL$    ; Unterprogramm Start
RA15
G04T5                   ; Hier Wechsel Programm Einfügen

SA15                    ; Werkzeugwechsel abgeschlossen
SA12
G99                     ; Unterprogramm Ende


;--------------------------------------
; Steuerungseingänge
;--------------------------------------

; E1       - Roboter Startsignal
; E5       - Werkzeugwechselanforderung

;--------------------------------------
; Steuerungsausgänge
;--------------------------------------

; A12      - Bearbeitung abgeschlossen
; A15      - Werkzeugwechsel abgeschlossen
