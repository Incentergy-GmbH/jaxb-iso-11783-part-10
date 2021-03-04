module jaxb_iso_11783_part10_log {
	exports de.incentergy.iso11783.part10.v4.log;

	requires java.xml;
	requires java.xml.bind;
	opens java.xml.bind;
}