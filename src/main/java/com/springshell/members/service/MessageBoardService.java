/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springshell.members.service;

import com.springshell.members.domain.Message;
import java.util.List;

/**
 *
 * @author ea
 */
public interface MessageBoardService {
    public List<Message> listMessages();
    public void postMessage(Message message);
    public void deleteMessage(Message message);
    public Message findMessageById(Long messageId);
}
