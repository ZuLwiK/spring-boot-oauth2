package pl.zulwik.lambda.exception;

public class NoSuchFacilityExistException extends NullPointerException {
    public NoSuchFacilityExistException(final String msg){
        super(msg);
    }
}
