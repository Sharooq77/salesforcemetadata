trigger triggeraccount1 on Account (before insert,after insert,
                                    before update,after update,
                                    before delete,after delete, after undelete) {
                                        
                                        if(trigger.isbefore){
                                            if(trigger.isinsert){
                                                system.debug('before insert===='+trigger.new);
                                                system.debug('before insert===='+trigger.old);
                                                
                                            } 
                                            
                                            else if (trigger.isupdate){
                                                system.debug('before insert===='+trigger.new);
                                                system.debug('before insert===='+trigger.old);
                                            }
                                            
                                            else if (trigger.isdelete){
                                                system.debug('before insert===='+trigger.new);
                                                system.debug('before insert===='+trigger.old);
                                            }     
                                        }
                                        
                                        if(trigger.isafter){
                                            if(trigger.isinsert){
                                                
                                                system.debug('after insert===='+trigger.new);
                                                system.debug('after insert===='+trigger.old);
                                            }    
                                            
                                            else if (trigger.isupdate){
                                                system.debug('after insert===='+trigger.new);
                                                system.debug('after insert===='+trigger.old);
                                            }  
                                            else if (trigger.isdelete){
                                                system.debug('after insert===='+trigger.new);
                                                system.debug('after insert===='+trigger.old);
                                              
                                            } 
                                            else if (trigger.isundelete){
                                                system.debug('after insert= recover==='+trigger.new);
                                            }
                                        }
                                        
                                        
                                    }