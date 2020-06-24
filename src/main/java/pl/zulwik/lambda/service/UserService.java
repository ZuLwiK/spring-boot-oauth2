package pl.zulwik.lambda.service;

import java.util.Map;

import org.springframework.security.oauth2.core.oidc.OidcIdToken;
import org.springframework.security.oauth2.core.oidc.OidcUserInfo;

import pl.zulwik.lambda.dto.LocalUser;
import pl.zulwik.lambda.dto.UserRegistrationForm;
import pl.zulwik.lambda.exception.UserAlreadyExistAuthenticationException;
import pl.zulwik.lambda.model.User;

/**
 * @author Chinna
 * @since 26/3/18
 */
public interface UserService {

	public User registerNewUser(UserRegistrationForm UserRegistrationForm) throws UserAlreadyExistAuthenticationException;

	User findUserByEmail(String email);

	LocalUser processUserRegistration(String registrationId, Map<String, Object> attributes, OidcIdToken idToken, OidcUserInfo userInfo);
}
