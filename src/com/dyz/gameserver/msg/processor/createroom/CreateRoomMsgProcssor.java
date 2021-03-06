package com.dyz.gameserver.msg.processor.createroom;

import com.context.ErrorCode;
import com.dyz.gameserver.Avatar;
import com.dyz.gameserver.commons.message.ClientRequest;
import com.dyz.gameserver.commons.session.GameSession;
import com.dyz.gameserver.manager.RoomManager;
import com.dyz.gameserver.msg.processor.common.INotAuthProcessor;
import com.dyz.gameserver.msg.processor.common.MsgProcessor;
import com.dyz.gameserver.msg.response.ErrorResponse;
import com.dyz.gameserver.msg.response.createroom.CreateRoomResponse;
import com.dyz.gameserver.pojo.AvatarVO;
import com.dyz.gameserver.pojo.RoomVO;
import com.dyz.persist.util.JsonUtilTool;

/**
 * Created by kevin on 2016/6/21.
 */
public class CreateRoomMsgProcssor extends MsgProcessor implements
        INotAuthProcessor {

    public CreateRoomMsgProcssor(){

    }

    @Override
    public void process(GameSession gameSession, ClientRequest request) throws Exception {
        String message = request.getString();
        RoomVO roomVO = (RoomVO) JsonUtilTool.fromJson(message, RoomVO.class);
        if(gameSession.isLogin()) {
            Avatar avatar = gameSession.getRole(Avatar.class);
           /*//二期优化注释 if (avatar == null) {
                //system.out.println("用户是空的，不能创建房间");
            }else{*/
            	AvatarVO avatarVo = avatar.avatarVO;
                if(avatarVo.getAccount().getRoomcard() >= roomVO.getRoundNumber()/8) {
                    if(avatarVo.getRoomId() == 0) {
                        RoomManager.getInstance().createRoom(avatar,roomVO);
                        //system.out.println("房间创建成功-- roomId:"+roomVO.getRoomId());
                        gameSession.sendMsg(new CreateRoomResponse(1,roomVO.getRoomId()+""));
                    }else{
                        //system.out.println("你已经在房间里了，不能再创建房间");
                        gameSession.sendMsg(new CreateRoomResponse(1,avatarVo.getRoomId()+""));
                    }
                }else{
                    //system.out.println("房间卡不足");
                    gameSession.sendMsg(new ErrorResponse(ErrorCode.Error_000014));
                }
            }
        /*//二期优化注释}else{
            //system.out.println("该用户还没有登录");
            gameSession.destroyObj();
        }*/

    }
}
