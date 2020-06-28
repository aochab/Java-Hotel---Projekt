import React, { Component } from "react";
import OrderService from "../../service/OrderService"
import Modal from "reactstrap/es/Modal";
import ItemService from "../../service/ItemService";


export default class Order extends Component{
    constructor(props) {
        super(props);

        this.state = {
            id: 0,
            price: 0,
            orderDate: 0,
            itemCounter: 0,
            item: [],
            modal: false
        }
    }

    componentDidMount() {
        this.setState({
            id: this.props.order_id,
            price: this.props.price,
            orderDate: this.props.orderDate,
            itemCounter: this.props.itemCounter,
            item: this.props.item
        });
    }

    onButtonClick = () => {
        this.setState({
            modal: !this.state.modal
        });
    };

    onConfirmBtnClick = () => {
        ItemService.getItemById(this.state.item.item_id).then(res => {
            this.setState({
                item: res.data
            });
        });

        let newItem = this.state.item;
        newItem.current_quantity += this.state.itemCounter;

        ItemService.updateItemById(this.state.item.item_id, newItem).then(res => {
           OrderService.deleteOrderById(this.state.id).then(res => {
              this.props.afterDelete(this.state.id);
           });
        });
        this.setState({
            modal: !this.state.modal
        });
    };

    render() {
        return (
            <div className="allreservations-reservation">
                <h5 className="my-label"><span className="allreservations-label">Przedmiot: </span>{this.state.item.item_name}</h5>
                <h5 className="my-label"><span className="allreservations-label">Cena: </span>{this.state.price}</h5>
                <h5 className="my-label"><span className="allreservations-label">Ilość: </span>{this.state.itemCounter}</h5>
                <h5 className="my-label"><span className="allreservations-label">Data zamówienia: </span><span className="allreservations-startdate">{this.state.orderDate}</span></h5>
                <button className="my-button login-button" onClick={this.onButtonClick}>Zrealizowano</button>
                <Modal isOpen={this.state.modal} toggle={this.onButtonClick}>
                    <h2 className="storage-text storage-itemName-text">Potwierdź realizację zamówienia:</h2>
                    <div className="storage-item-buttons">
                        <button className="additem-button storage-confirmation-button" onClick={this.onConfirmBtnClick}>Potwierdzam</button>
                        <button className="additem-button storage-confirmation-button" onClick={this.onButtonClick}>Zamykam</button>
                    </div>
                </Modal>
            </div>
        );
    }
}