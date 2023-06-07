package com.esun.esuninterview.models.beans.products;

import java.io.Serializable;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;

public class ProductIdGenerator implements IdentifierGenerator {
	private static final String PREFIX = "P";
	private static final int INITIAL_VALUE = 1;
	private static int counter = INITIAL_VALUE;

	@Override
	public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
		String generatedId = PREFIX + String.format("%03d", counter++);
		return generatedId;
	}
}
