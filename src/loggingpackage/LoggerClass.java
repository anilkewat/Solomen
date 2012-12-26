/**
 * 
 */
package loggingpackage;

import org.apache.log4j.Logger;

/**
 * @author Administrator
 *
 */
public class LoggerClass {
private static Logger logger;

/**
 * @return the logger
 */
private static Logger getLogger() {
	return logger;
}

/**
 * @param logger the logger to set
 */
private static void setLogger(final Logger log) {
	logger = log;
}

public static void writeLog(Class clazzz,String message){
	setLogger(Logger.getLogger(clazzz));
	getLogger().debug(message);
}

}
