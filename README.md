# Projektarbeit – Automatisierung einer RQS-Maschine

Dieses Projekt ist Teil einer Projektarbeit an der **Hochschule Kempten**. 
Es umfasst Skripte zur Kalibrierung eines Feature-Koordinatensystems, zum Anfahren von Arbeitspunkten sowie zum Laden und Testen der zugehörigen Abläufe.
Ziel der Projektarbeit war das automatisierte Beladen und Entladen einer Schweißmaschine, mittels eines UR-10e Roboters.

## Dateien

### `calibrate_feature.script`

Misst zwei Kanten und zwei Punkte auf der Oberseite eines Werkstücks. Aus den Messpunkten berechnet das Skript den Ursprung, die Höhe und die Orientierung eines neuen Feature-Koordinatensystems. Während der Kantenmessung wird die Bewegung mithilfe der Kraftmessung überwacht.

Bei zu kurzen Messlinien, nicht annähernd rechtwinkligen Kanten oder nahezu parallelen Geraden wird ein Kalibrierfehler gemeldet. Nach erfolgreicher Berechnung wird das Feature ausgegeben und die Kalibrierung als abgeschlossen gemeldet.

### `RQS_loading`

Ablaufprogramm der Projektarbeit. Steuert alle Bewegungen, sowie die Kommunikation mit der cnc steuerung. 
Nutzt kraftgeregelte Bewegungen, um die Werkstücke präzise abzulegen.

### `teach_work_points`

Dient zum Einrichten beziehungsweise Anlernen der im Projekt verwendeten Arbeitspunkte. Diese Punkte werden von den Bewegungs- und Kalibrierabläufen als Ziel- oder Messpositionen verwendet.

### `Test_Gesamt_ohne_cnc`

Enthält einen übergeordneten Testablauf ohne Einbindung einer CNC-Maschine. Er ist für die Erprobung der kombinierten Roboterabläufe ohne CNC-Kommunikation vorgesehen.

## Sicherheitshinweis

Die Skripte steuern Bewegungen eines Roboters. Vor dem Einsatz an der realen Anlage müssen Koordinaten, Bewegungsrichtungen, Geschwindigkeiten, Kraftgrenzen und Sicherheitsfunktionen geprüft werden. Tests sollten zunächst unter geeigneten Sicherheitsbedingungen durchgeführt werden.
